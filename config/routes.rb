Rails.application.routes.draw do
  #devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"

  resources :articles do
    # recurso anidado
    resources :comments
  end

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
