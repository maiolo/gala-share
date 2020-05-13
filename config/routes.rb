Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home" 
  get '/user', to: "products#index", as: 'user_root'
  get "/dashboard", to: 'pages#dashboard' 
  resources :users, only: [ :show, :edit ]
  resources :deals, only: [ :show, :update ]
  post "/deals/:product_id", to: "deals#create"
  resources :products #do
  #   resources :deals, only: [:create]
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
