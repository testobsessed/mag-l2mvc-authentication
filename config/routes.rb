Rails.application.routes.draw do
  resources :registrations, only: [:new, :create]
end