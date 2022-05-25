# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  resources :deals, only: [:new, :create, :index, :show]
  resources :groups, only: [:new, :create, :index, :show]

  root to: 'splash#index'
end
