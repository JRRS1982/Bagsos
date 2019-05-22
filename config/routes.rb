# frozen_string_literal: true

Rails.application.routes.draw do
  get "welcome/index"
  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  resources :tasks

  resources :users, only: %i[show edit update destroy]

  root to: "welcome#index"

  get "users/:username", to: "users#show"
end
