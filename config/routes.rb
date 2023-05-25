require 'sidekiq/web'

Rails.application.routes.draw do
  resources :languages
  resources :movie_actors
  resources :movie_directors
  resources :movie_genres
  resources :details
  resources :reviews
  resources :ratings
  resources :actors
  resources :directors
  resources :genres
  resources :movies
 

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  resources :movies do
    collection do
      get 'search'
    end
  end  
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :impersonates do
      post :impersonate, on: :member
      post :stop_impersonating, on: :collection
    end
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'movies#index'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
