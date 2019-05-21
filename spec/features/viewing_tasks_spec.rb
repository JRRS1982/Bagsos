# frozen_string_literal: true

require 'rails_helper'

feature 'Viewing tasks' do
  scenario 'volunteers can see tasks page' do
    sign_up_volunteer
    visit '/tasks'
    expect(page).to have_content('Help someone with a task')
  end

  scenario 'beneficiaries are restricted from seeing tasks page' do
    sign_up_beneficiary
    visit '/tasks'
    expect(page).to have_current_path('/tasks/new')
  end

  scenario 'volunteers can see a listed task' do
    sign_up_beneficiary
    click_link 'New task'
    fill_in 'task_title', with: "Task title"
    fill_in 'task_description', with: "Task description"
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    log_out
    sign_up_volunteer
    expect(page).to have_content("Task Title")
  end

  scenario 'volunteers can open a listed task to see description' do
    sign_up_beneficiary
    click_link 'New task'
    fill_in 'task_title', with: "Task title"
    fill_in 'task_description', with: "Task description"
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    log_out
    sign_up_volunteer
    click_link 'Show Task'
    expect(page).to have_content("Task description")
  end
end