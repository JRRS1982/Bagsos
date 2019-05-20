# frozen_string_literal: true

require 'rails_helper'

feature 'Creating tasks' do
  scenario 'can see create task form' do
    sign_up_beneficiary
    visit '/tasks/new'
    expect(page).to have_field('Title')
    expect(page).to have_field('Description')
  end

  scenario 'can create a task' do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Help me cut my grass in Camden Town'
    fill_in 'Description', with: 'I am a disabled man with a small garden in Camden Town, I need some help cutting my grass'
    click_button 'List Task'
    expect(page).to have_current_path('/tasks/new')
  end

  scenario 'can see confirmation message upon successfully creating a task' do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Help me cut my grass in Camden Town'
    fill_in 'Description', with: 'I am a disabled man with a small garden in Camden Town, I need some help cutting my grass'
    click_button 'List Task'
    expect(page).to have_content('Task successfully listed')
  end

  scenario 'shows error message when task is missing a description' do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Title', with: 'Help me cut my grass in Camden Town'
    click_button 'List Task'
    expect(page).to have_content("Description can't be blank")
  end

  scenario 'shows error message when task is missing a title' do
    sign_up_beneficiary
    visit '/tasks/new'
    fill_in 'Description', with: 'I am a disabled man with a small garden in Camden Town, I need some help cutting my grass'
    click_button 'List Task'
    expect(page).to have_content("Title can't be blank")
  end
end
