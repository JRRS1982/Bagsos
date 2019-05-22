# frozen_string_literal: true

require "rails_helper"

feature "Creating tasks" do
  scenario "beneficiaries can see create task form" do
    sign_up_beneficiary
    visit '/tasks/new'
    expect(page).to have_content('List a task')
    expect(page).to have_field('Title')
    expect(page).to have_field('Description')
    expect(page).to have_field('Address')
  end

  scenario "volunteers are restricted from seeing create task form" do
    sign_up_volunteer
    visit "/tasks/new"
    expect(page).to have_current_path("/tasks")
  end

  scenario "can create a task" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Task title'
    fill_in 'Description', with: 'Task description'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    expect(page).to have_content("Task Title")
  end

  scenario "can see confirmation message upon successfully creating a task" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Task title'
    fill_in 'Description', with: 'Task description'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    expect(page).to have_content('Task successfully listed')
  end

  scenario "shows error message when task is missing a description" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Task title'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    expect(page).to have_content("Description can't be blank")
  end

  scenario "shows error message when task is missing a title" do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Description', with: 'Task description'
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    expect(page).to have_content("Title can't be blank")
  end
end
