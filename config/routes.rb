# frozen_string_literal: true

Rails.application.routes.draw do
  get 'tasks/index'
  resources :tasks
  root 'tasks#index'
end
