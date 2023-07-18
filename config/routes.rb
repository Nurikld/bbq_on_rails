Rails.application.routes.draw do
  devise_for :users
  resources :users
  # корень сайта
  root to: "events#index"

  # Не все действия поддерживаются – только show, edit, update
  resources :users, only: [:show, :edit, :update]

  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
