Rails.application.routes.draw do
  devise_for :users do 
    resources :deals, only: [:index, :show, :edit, :update]
  end
  root to: "pages#home"
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
