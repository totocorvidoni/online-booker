Rails.application.routes.draw do
  root 'flights#index'

  resources :flights, :airports
end
