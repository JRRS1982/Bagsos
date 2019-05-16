# this is not a great test as we dont yet have sessions arranged... also we have not yet implemented session to hide the log out button is session is in.

require "rails_helper"

xRSpec.feature "Log out", type: :feature do
  scenario "Clicking log out should log you out" do
    sign_up username: "Bob", email: "bob@bob.com", password: "password"
    click_link("Log out")
    expect(page).not_to have_link("Log out")
    expect(page).to have_text("You are logged out")
  end
end
