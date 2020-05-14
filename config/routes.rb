Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home" 
  get '/user', to: "products#index", as: 'user_root'
  get "/dashboard", to: 'pages#dashboard' 
  resources :users, only: [ :show, :edit ]
  resources :deals, only: [ :show, :update ]
  post "/deals/:product_id", to: "deals#create"
  resources :products 
end
