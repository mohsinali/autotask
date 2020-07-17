Rails.application.routes.draw do
  root 'visitors#index'
  devise_for :users


  resources :meetings do
    collection do
      get :update_contacts
    end
  end
 
  get 'get_contacts_by_organization/:organization_id', to: 'contacts#get_contacts_by_organization'
  get 'comments/index'
  get 'comments/new'

  resources :externals  do 
       resources :comments
  end


  resources :call_testings
  resources :organizations
  resources :users
end
