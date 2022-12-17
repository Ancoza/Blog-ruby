Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
end