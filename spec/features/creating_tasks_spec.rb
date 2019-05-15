# frozen_string_literal: true

require 'rails_helper'

feature 'Creating tasks' do
  scenario 'can create a task' do
    visit '/'
    click_link 'New Task'
    fill_in 'Title', with: 'Help me cut my grass in Camden Town'
    fill_in 'Description', with: 'I am a disabled man with a small garden in Camden Town, I need some help cutting my grass'
    click_button 'List Task'
    expect(page).to have_current_path('/')
  end
end