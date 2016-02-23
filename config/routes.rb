Rails.application.routes.draw do
  root 'users#index', as: 'users'
  resources :users, except: [:index]
end
