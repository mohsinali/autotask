Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  resources :externals  do 
  	   resources :comments
  end 
  resources :call_testings

  resources :organizations
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
