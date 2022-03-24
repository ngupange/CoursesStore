Rails.application.routes.draw do
  resources :orders
  root 'courses#index'
  resources :courses
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
