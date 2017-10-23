# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
  resources :adventurers, except: %i[new edit]
  resources :levels, only: %i[index show]
  resources :enemy_modifiers, only: %i[index show]
  resources :enemies, only: %i[index show]
  resources :states, except: %i[new edit]
end
