Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :recipes

  root to: 'recipes#index'
end
