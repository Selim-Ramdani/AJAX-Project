Rails.application.routes.draw do

  root 'home#index'
  resources :books, only: [:create, :index]
  resources :todos, only: [:index, :create]
end
