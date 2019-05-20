# frozen_string_literal: true

require 'rails_helper'

feature 'Creating tasks' do
  xscenario 'volunteers can see tasks page' do
    sign_up_volunteer
    visit '/tasks'
    expect(page).to have_content('Help someone with a task')
  end

  xscenario 'beneficiaries are restricted from seeing tasks page' do
    sign_up_beneficiary
    visit '/tasks'
    expect(page).to have_current_path('/tasks/new')
  end
end