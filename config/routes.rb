Rails.application.routes.draw do
  devise_for :users

  get '', to: 'pages#home', as: :home
  get 'hr_home', to: 'pages#hr_home', as: :hr_home
  root to: 'passthrough#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show, :destroy]

  scope :hr_home do
    resources :company_policies, only: [:edit, :update]
    get 'all_bookings', to: 'pages#all_bookings', as: :all_bookings
  end
end

