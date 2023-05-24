Rails.application.routes.draw do

  resources :spaces, only: [:index, :show, :update, :destroy]
  resources :reviews, only: [:index, :create]
  
  post "/signup", to: "users#create"
  post "/login", to: "auth#create"


end
