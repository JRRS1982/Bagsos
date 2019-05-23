# frozen_string_literal: true

require "rails_helper"

feature "Viewing messages" do
  scenario "user can see messages page" do
    sign_up_volunteer
    visit "/conversations"
    expect(page).to have_content("Messages")
  end
end

