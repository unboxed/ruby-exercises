Rails.application.routes.draw do
  resources :residents
  resources :houses do
    member do
      get 'residents'
    end
  end
  root to: 'houses#index'
end
