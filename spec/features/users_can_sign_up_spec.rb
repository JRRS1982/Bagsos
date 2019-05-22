# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign up page' do
  scenario 'users can reach sign up from welcome page' do
    visit '/'
    click_link 'Sign up'
    expect(page).to have_field('Name')
    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
  end

  scenario 'users can sign up' do
    visit '/users/sign_up'
    fill_in 'user_name', with: 'Volunteer'
    fill_in 'user_email', with: 'volunteer@helpinghands.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_content("You have signed up successfully")
  end

  scenario 'sign up shows error if email not unique' do
    sign_up_volunteer
    log_out
    sign_up_volunteer
    expect(current_path).to eq("/users")
    expect(page).to have_content("Email has already been taken")
  end
end 


