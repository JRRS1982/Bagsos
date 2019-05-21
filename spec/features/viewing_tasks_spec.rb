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
    fill_in 'task_title', with: "Help ooooh i need somebody!"
    fill_in 'task_description', with: "Oooooo i need somebody to loveeeeeeeeeeeeeee, not just anybody!"
    fill_in 'task_address', with: "50 Commercial Street, London"
    click_button 'List Task'
    expect(page).to have_content('Task successfully listed')
    click_link 'Log out'
    sign_up_volunteer
    expect(page).to have_content("Help Ooooh I Need Somebody!")
  end
end