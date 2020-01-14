Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  root 'landing#index'

  resources :requests
  resources :profiles

  root to: 'landing#index'
end
