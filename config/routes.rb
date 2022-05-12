Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, except: [:edit, :update , :index]

  resources :boats do
    resources :bookings
  end
  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create, :show, :index]
  end
  resources :bookings, except: [:new, :create]
end
