Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home" 
  get "/dashboard", to: 'pages#dashboard' 
  resources :users, only: [ :show, :edit ] do 
    resources :deals, only: [ :index, :show, :edit, :update ]
  end
  resources :products 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
