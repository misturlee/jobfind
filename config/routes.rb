Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :jobs
  root "jobs#index"
  get 'searchh', to:"jobs#searchh"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
