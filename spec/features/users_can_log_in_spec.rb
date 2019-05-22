# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Logging in' do
  scenario 'log in shows error if no account match' do
    visit '/'
    click_on 'Log in'
    fill_in 'Email', with: "fake@fake.com"
    fill_in 'Password', with: "falsepassword"
    click_button 'Log in'
    expect(current_path).to eq("/users/sign_in")
    expect(page).to have_content("Invalid Email or password")
  end

  scenario 'log in shows error if email incorrect' do
    sign_up_volunteer
    log_out
    click_on 'Log in'
    fill_in 'Email', with: "beneficiary@helpinghands.com"
    fill_in 'Password', with: "password"
    click_button 'Log in'
    expect(current_path).to eq("/users/sign_in")
    expect(page).to have_content("Invalid Email or password")
  end 

  scenario 'log in shows error if password incorrect' do
    sign_up_volunteer
    log_out
    click_on 'Log in'
    fill_in 'Email', with: "volunteer@helpinghands.com"
    fill_in 'Password', with: "1nc0rr3ct pa55w0rd"
    click_button 'Log in'
    expect(current_path).to eq("/users/sign_in")
    expect(page).to have_content("Invalid Email or password")
  end 
end
