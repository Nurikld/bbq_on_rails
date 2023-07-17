Rails.application.routes.draw do
  # корень сайта
  root to: "events#index"

  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
