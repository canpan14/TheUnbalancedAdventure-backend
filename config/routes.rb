# frozen_string_literal: true

Rails.application.routes.draw do
  resources :enemies, only: %i[index show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
  resources :adventurers, except: %i[new edit]
end
