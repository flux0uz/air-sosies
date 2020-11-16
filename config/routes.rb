Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :doubles do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :show, :destroy ] do
    resources :reviews, only: [ :new, :create ]
  end
end
