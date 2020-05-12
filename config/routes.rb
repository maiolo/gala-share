Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home" 
  get '/user' => "products#index", :as => :user_root
  get "/dashboard", to: 'pages#dashboard' 
  resources :users, only: [ :show, :edit ]
  resources :deals, only: [ :create, :show, :update ]
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
