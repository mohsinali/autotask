Rails.application.routes.draw do
  resources :call_testings
  resources :organizations
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
