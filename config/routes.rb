Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes, only: [:index, :new, :create, :show, :edit, :destroy, :updata] do
    resources :comments, only: [:create, :edit, :delete]
  end

  resources :users, only: [:show, :edit, :update]
  end
