Rails.application.routes.draw do
   devise_for :users
  root to: 'pages#home'
  resources :user do
  	resources :review, only: [:show, :new, :create]
  end
  resources :vans do
  	resources :review, only: [:show, :new, :create]
  end
  resource :account, only: [:show], as: :current_account
  resources :accounts, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
