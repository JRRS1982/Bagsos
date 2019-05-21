require 'rails_helper'

feature 'Volunteer Route' do
  scenario 'Are redirected to signup page when clicking on signup button' do
    visit '/'
    click_on 'Sign up'
    expect(current_path).to eq("/users/sign_up")
  end
  
  scenario 'Are redirected to login page when clicking on login button' do
    visit '/'
    click_on 'Log in'
    expect(current_path).to eq("/users/sign_in")
  end

  scenario 'When on signup page and fill in details and click ok i go to tasks all' do
    visit '/'
    click_on 'Sign up'
    choose(option: 'volunteer')
    fill_in 'Name', with: "Bob"
    fill_in 'Email', with: "Bob@bob.com"
    fill_in 'Password', with: "password"
    fill_in 'Password confirmation', with: "password"
    click_button 'Sign up'
    expect(current_path).to eq("/tasks")
  end

  scenario 'When logging in you need to have an account else you get an error' do
    visit '/'
    click_on 'Log in'
    fill_in 'Email', with: "fake@fake.com"
    fill_in 'Password', with: "falsepassword"
    click_button 'Log in'
    expect(current_path).to eq("/users/sign_in")
    expect(page).to have_content("Invalid Email or password")
  end

  scenario 'When logging in you need to have an account else you get an error' do
    sign_up_volunteer
    log_out
    sign_up_volunteer
    expect(current_path).to eq("/users")
    expect(page).to have_content("Email has already been taken")
  end

end
