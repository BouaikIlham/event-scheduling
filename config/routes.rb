Rails.application.routes.draw do
  resources :mettings
  devise_for :users
  resources :users, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
