# frozen_string_literal: true

require "rails_helper"

feature "See navigation links" do
  scenario "visitors can see navigation links" do
    visit "/"
    expect(page).to have_link("Log in")
    expect(page).to have_link("Sign up")
  end

  scenario "volunteers can see navigation links on tasks page" do
    sign_up_volunteer
    expect(page).to have_link("Home")
    expect(page).to have_link("Log out")
  end

  scenario "beneficiaries can see navigation links on new task page" do
    sign_up_beneficiary
    expect(page).to have_link("Home")
    expect(page).to have_link("Log out")
  end

  scenario "volunteers can see navigation links on homepage" do
    sign_up_volunteer
    click_link("Home")
    expect(page).to have_link("Log out")
    expect(page).to have_link("Tasks")
  end

  scenario "beneficiaries can see navigation links on homepage" do
    sign_up_beneficiary
    click_link("Home")
    expect(page).to have_link("Log out")
    expect(page).to have_link("New task")
  end
end
