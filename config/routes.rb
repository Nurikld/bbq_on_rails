Rails.application.routes.draw do
  resources :subscriptions
  resources :comments
  devise_for :users
  resources :users

  root to: "events#index"

  resources :users, only: [:show, :edit, :update]

  resources :events do
    resources :comments, only: [:create, :destroy]
    resources :subscriptions, only: [:create, :destroy]
  end
end
