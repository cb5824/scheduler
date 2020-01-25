Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  root 'landing#index'

  resources :requests
  resources :profiles
  resources :changelogs

  resources :requests do
    resources :changelogs
    patch :approve
    put :approve
  end

  root to: 'landing#index'
end
