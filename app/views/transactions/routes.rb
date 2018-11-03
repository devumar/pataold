Rails.application.routes.draw do

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

  root to: 'home#index' 
  post 'import_from_excel' => "fields#import_from_excel"
  get "download_xl" => "fields#download_xl" 

end  
 
