Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'landing/index'
  root 'landing#index'

  resources :requests
  resources :profiles
  resources :changelogs
  resources :contractors
  resources :registrations
  resources :signuptokens

  resources :requests do
    resources :changelogs
    patch :approve
    put :approve
    patch :cancel
    put :cancel
  end

  resources :requests do
    get 'note', on: :new
  end

  namespace :api do
    namespace :v1 do
      resources :requests, only: [:index, :update, :show, :create, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :approvals, only: [:index, :update, :show, :create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index, :update, :show, :create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :newsfeeds, only: [:index, :update, :show, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :signuptokens, only: [:index, :update, :show, :create, :destroy]
    end
  end


  root to: 'landing#index'

end
