Rails.application.routes.draw do
  resources :logins, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end