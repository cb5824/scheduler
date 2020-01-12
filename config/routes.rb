Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'landing/index'
  root 'landing#index'

  resources :requests
  resources :registrations

  root to: 'landing#index'
end
