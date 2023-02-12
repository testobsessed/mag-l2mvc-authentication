Rails.application.routes.draw do
  get 'logins/new'
  get 'logins/create'
  resources :registrations, only: [:new, :create]
end