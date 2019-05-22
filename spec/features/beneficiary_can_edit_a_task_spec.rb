# frozen_string_literal: true

require "rails_helper"

feature "Editing tasks" do

  scenario "can edit a task" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Task title'
    fill_in 'Description', with: 'Task description'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    click_link 'Edit Task'
    expect(page).to have_content("Edit Task")
  end
end