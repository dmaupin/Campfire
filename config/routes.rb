Rails.application.routes.draw do
  resources :users
  resources :sessions

  get '/logout' => 'sessions#destroy'

  resources :recipes

  root to: 'recipes#index'
end
