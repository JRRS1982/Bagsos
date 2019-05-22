# frozen_string_literal: true

Rails.application.routes.draw do
  get "welcome/index"
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  resources :tasks
  resources :conversations, only: [:index, :show, :destroy]
  resources :users, only: %i[show edit update destroy]
  resources :messages, only: [:new, :create]
  
  root to: "welcome#index"

  get "users/:username", to: "users#show"
end
