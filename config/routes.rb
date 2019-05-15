# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :tasks
  root 'welcome#index'
end
