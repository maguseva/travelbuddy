Rails.application.routes.draw do
  devise_for :users
  # root to: 'packages#index'
  get 'home', to: 'pages#home', as: :home
  get 'hr_home', to: 'pages#hr_home', as: :hr_home
  root to: 'passthrough#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :show, :destroy]
  resources :company_policies, only: [:edit, :update]
end

