# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Sign up page" do
  scenario "users can reach sign up from welcome page" do
    visit "/"
    click_link "Sign up"
    expect(page).to have_field("Name")
  end

  scenario "When logging in you need to have an account else you get an error" do
    sign_up_volunteer
    log_out
    sign_up_volunteer
    expect(current_path).to eq("/users")
    expect(page).to have_content("Email has already been taken")
  end
end

# fill_in 'user_name', with: 'Bob'
#     fill_in 'user_email', with: 'Bob@bob.com'
#     fill_in 'user_password', with: 'password'
#     fill_in 'user_password_confirmation', with: 'password'
#     click_button 'Sign up'
