Rails.application.routes.draw do
 devise_for :users
 root to: 'pages#home'
 resources :users do
   resources :reviews, only: [:show, :new, :create]
 end
 resources :vans do
   resources :reviews, only: [:show, :new, :create]
 end

 resource :account, only: [:show], as: :current_account
 resources :accounts, only: [:show]
 get 'trips', to: 'accounts#trips'

 get 'booking/:id', to: 'accounts#booking', as: :view_booking
 post 'booking', to: 'accounts#create_booking', as: :post_booking
 get 'booking', to: 'accounts#booking'
 get 'guests', to: 'accounts#guests'
 get 'guest', to: 'accounts#guest'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
