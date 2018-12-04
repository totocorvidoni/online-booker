Rails.application.routes.draw do
  root 'flights#index'

  resources :flights, :airports
  resources :bookings, only: [:show, :new, :create]
end
