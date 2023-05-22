Rails.application.routes.draw do
  resources :spaces, only: [:index, :show]
  resources :reviews, only: [:index, :create]
  resources :users

 # get "/spaces", to: "spaces#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
