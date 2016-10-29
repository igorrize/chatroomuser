Rails.application.routes.draw do
  devise_for :users

  resources :rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root 'rooms#index'
end
