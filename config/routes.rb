Rails.application.routes.draw do
 devise_for :users
 root to: 'pages#home'
 resources :users do
   resources :review, only: [:show, :new, :create]
 end
 resources :vans do
   resources :reviews, only: [:show, :new, :create]
   get 'trips', to: 'accounts#trips'
   get 'booking', to: 'accounts#booking'
 end
 resource :account, only: [:show], as: :current_account
 resources :accounts, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
