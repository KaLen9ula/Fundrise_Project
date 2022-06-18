Rails.application.routes.draw do
  get 'info/about'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  resources :project, only: [:show]
  resources :support, only: [:create]
end
