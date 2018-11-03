Rails.application.routes.draw do

  get 'fields/index'

  get 'fields/import'

  namespace :admin do
       root 'index#index'
       resources :index
       resources :tenants
       resources :landlords
       resources :mpesas
       resources :books
  end

   

  resources :disburses
  resources :houses
  resources :tenants do
    get :search, on: :collection
    get :search_house, on: :collection
  end
  resources :landlords
  resources :properties
  resources :transactions do
    get :search, on: :collection
  end
  resources :fields
  resources :receipts

  devise_for :users, only: :session, path: 'session',
             path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users, only: [:show]
  resources :assign_house, controller: 'assigns'

  resources :fields do
  collection { post :import }
  end
  root to: 'home#index' 

end  
 
