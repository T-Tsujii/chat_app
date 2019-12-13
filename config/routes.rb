Rails.application.routes.draw do
  devise_for :users
  root 'rooms#show'
  resources :messages, only: :create
end
