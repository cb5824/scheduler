Rails.application.routes.draw do
  devise_for :users

  # i don't know if you need the get here if you also have the root.
  # it should just render that page with a GET by default.
  get 'landing/index'
  root 'landing#index'

  resources :requests
  resources :profiles
  resources :changelogs

  resources :requests do
    resources :changelogs
    patch :approve
    put :approve
    patch :cancel
    put :cancel
  end

  # When you're doing stuff like this, i really like defining a namespaced controller.
  # I think it'd be a Request::NotesController, but I'm not sure about that. If that works (I might
  # need to look up that syntax), it lets you do resource-driven routes without
  # using the direct HTTP mappings.

  resources :requests do
    get 'note', on: :new
  end

  # NOTE: this is a very, very good idea here.
  namespace :api do
    namespace :v1 do
      resources :requests, only: [:index, :update, :show, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :approvals, only: [:index, :update, :show, :create]
    end
  end

  root to: 'landing#index'

end
