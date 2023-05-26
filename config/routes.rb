Rails.application.routes.draw do

  resources :spaces, only: [:index, :create, :show, :update, :destroy]
  resources :reviews, only: [:index, :create]

  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
get "/", to: "spaces#welcome"

end
