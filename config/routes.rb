# frozen_string_literal: true

Rails.application.routes.draw do
  resources :places
  get 'welcome/index'
  devise_for :users
  resources :tasks
  authenticated :user do
    root 'tasks#index', as: :authenticated_root
  end
  root to: 'welcome#index'
end
