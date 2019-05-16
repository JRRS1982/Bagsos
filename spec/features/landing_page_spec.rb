require 'rails_helper'

feature 'Landing page' do
  scenario 'Landing page has link to redirect to signup page' do
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_current_path('/users/sign_up')
  end
  
  scenario 'Landing page has link to login page' do
    visit '/'
    click_link 'Login'
    expect(page).to have_current_path('/users/sign_in')
  end
end