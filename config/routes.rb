Rails.application.routes.draw do
  devise_for :users

  resources :rooms, only: [:new, :create, :show, :index]
  resources :users
  mount ActionCable.server => '/cable'

  root 'rooms#index'
end
