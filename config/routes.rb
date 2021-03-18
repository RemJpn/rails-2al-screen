Rails.application.routes.draw do
  devise_for :users
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  #in test, needs ngrok http 3000

  root to: 'pages#home'

  resources :shows, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show] do
    resources :payments, only: :new
  end


end
