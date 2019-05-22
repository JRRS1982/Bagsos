# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Welcome page" do
  scenario "Welcome page has link to redirect to signup page" do
    visit "/"
    click_link "Sign up"
    expect(page).to have_current_path("/users/sign_up")
  end

  scenario "Welcome page has link to login page" do
    visit "/"
    click_link "Log in"
    expect(page).to have_current_path("/users/sign_in")
  end
end
