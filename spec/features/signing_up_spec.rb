require 'rails_helper'

feature 'Signing up' do
  scenario 'Sign up' do
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_current_path('/users/sign_up')
  end
  
  scenario 'Sign up' do
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_link('Log in')
  end
end
