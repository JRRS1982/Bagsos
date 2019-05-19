# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :tasks
  root to: 'welcome#index'
end
