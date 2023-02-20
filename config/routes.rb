Rails.application.routes.draw do
  root 'dashboards#index'
  resources :posts
  get 'dashboards/index', as: :dashboards
  get 'logout', to: "logins#logout"
  resources :logins, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end