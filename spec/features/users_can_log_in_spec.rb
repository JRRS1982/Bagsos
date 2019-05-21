# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Sign up page" do
  scenario "When logging in you need to have an account else you get an error" do
    visit "/"
    click_on "Log in"
    fill_in "Email", with: "fake@fake.com"
    fill_in "Password", with: "falsepassword"
    click_button "Log in"
    expect(current_path).to eq("/users/sign_in")
    expect(page).to have_content("Invalid Email or password")
  end
end
