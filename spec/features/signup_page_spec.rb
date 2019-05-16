require 'rails_helper'

Rspec.feature 'Signup page' do
  scenario 'Landing page through to clicking signup button' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Bob'
    fill_in 'user_email', with: 'Bob@bob.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign up'
    expect(page).to have_current_path('/')
  end
end