# frozen_string_literal: true

require "rails_helper"

feature "Viewing messages" do
  scenario "user can see messages page" do
    sign_up_volunteer
    visit "/conversations"
    expect(page).to have_content("Messages")
  end

  scenario "user can see sent messages" do
    sign_up_beneficiary
    post_task
    log_out
    sign_up_volunteer
    visit "/tasks"
    click_link "Show Task"
    click_link "Send message to beneficiary"
    fill_in 'Subject', with: 'Message subject'
    fill_in 'Message', with: 'Message body'
    click_button 'Send'
    click_link 'Messages'
    click_link 'Sent'
    expect(page).to have_content("Message subject")
  end

  scenario "user can see sent confirmation when sending message" do
    sign_up_beneficiary
    post_task
    log_out
    sign_up_volunteer
    visit "/tasks"
    click_link "Show Task"
    click_link "Send message to beneficiary"
    fill_in 'Subject', with: 'Message subject'
    fill_in 'Message', with: 'Message body'
    click_button 'Send'
    expect(page).to have_content("Message has been sent!")
  end
  scenario "user can see reply to a message" do
    sign_up_beneficiary
    post_task
    log_out
    sign_up_volunteer
    visit "/tasks"
    click_link "Show Task"
    click_link "Send message to beneficiary"
    fill_in 'Subject', with: 'Message subject'
    fill_in 'Message', with: 'Message body'
    click_button 'Send'
    log_out
    log_in(email: 'beneficiary@email.com', password: 'password')
    visit "/conversations"
    click_link "Message subject"
    fill_in 'body', with: 'Reply'
    click_button "Send Message"
    expect(page).to have_content("Reply sent")
  end
end

