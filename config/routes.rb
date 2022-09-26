Rails.application.routes.draw do
  resources :tasks
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "tasks#index"
end
