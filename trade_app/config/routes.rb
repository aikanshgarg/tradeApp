require 'sidekiq/web'

Rails.application.routes.draw do
  
  # scaffold generated
  resources :trades

  # devise generated
  devise_for :users
  
  # kickoff generated
  # root to: 'home#index'

  root to: 'trades#index'

  # nesting routes for the conversation and messages part
  resources :conversations do
  	resources :messages
  end



end
