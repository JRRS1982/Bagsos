# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :beneficiaries, path: 'beneficiaries', controllers: {
    sessions: 'beneficiaries/sessions'
  }
  devise_for :volunteers, path: 'volunteers', controllers: {
    sessions: 'volunteers/sessions'
  }

  get 'welcome/index'
  resources :tasks
  authenticated :user do
    root 'tasks#index', as: :authenticated_root
  end
  root to: 'welcome#index'
end
