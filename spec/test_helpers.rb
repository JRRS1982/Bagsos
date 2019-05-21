# frozen_string_literal: true

def sign_up_beneficiary(name: 'Beneficiary', email: 'beneficiary@email.com', password: 'password')
  visit '/users/sign_up'
  choose(option: 'beneficiary')
  fill_in 'Name', with: name
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password
  click_button 'Sign up'
end

def sign_up_volunteer(name: 'Volunteer', email: 'volunteer@email.com', password: 'password')
  visit '/users/sign_up'
  choose(option: 'volunteer')
  fill_in 'Name', with: name
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password
  click_button 'Sign up'
end

def log_in(email: 'myemail@email.com', password: 'password')
  visit '/users/sign_in'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Log in'
end

def log_out
  click_link 'Log out'
end

