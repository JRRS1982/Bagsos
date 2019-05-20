# frozen_string_literal: true

require 'rails_helper'

feature 'Creating tasks' do
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

  scenario 'volunteers can see tasks page' do
    sign_up_beneficiary
    fill_in 'task[title]', with: "Help ooooh i need somebody!"
    fill_in 'task[description]', with: "Oooooo i need somebody to loveeeeeeeeeeeeeee, not just anybody!"
    click_button 'List Task'
    expect(page).to have_content('Task successfully listed')
    click_link 'Log out'
    # up to here works
    sign_up_volunteer
    expect(page).to have_content('Help ooooh i need somebody!')
  end
end