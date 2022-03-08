Rails.application.routes.draw do

  root 'books#index'
  resources :books, only: [:create, :index]
  resources :todos, only: [:index, :create]
end
