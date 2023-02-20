Rails.application.routes.draw do
  root 'dashboards#index'
  resources :posts
  get 'dashboards/index', as: :dashboards
  resources :logins, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end