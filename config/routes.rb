Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show]
end
