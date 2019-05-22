# frozen_string_literal: true

require "rails_helper"

feature "Deleting tasks" do

  scenario "can delete a task" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Task title'
    fill_in 'Description', with: 'Task description'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    click_link 'Delete Task'
    expect(page).not_to have_content("Task Title")
  end
end