# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :pages, only: [] do
    collection do
      get :impressum
      get :contact
      get :privacy
      get :data_protection
    end
  end
end
