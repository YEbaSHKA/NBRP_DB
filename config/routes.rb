# frozen_string_literal: true

Rails.application.routes.draw do
  resources :add_not_null_constraint_to_genres_names
  resources :subscriptions
  resources :subscribs
  resources :subscribtions
  resources :subscribers
  resources :books_authors
  resources :books_genres
  resources :books
  resources :authors
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
