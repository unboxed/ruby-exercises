Rails.application.routes.draw do
  resources :residents
  resources :houses
  root to: 'houses#index'
end
