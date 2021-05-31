Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/show'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "home#index"
  resources :packs, only: [:index, :show]
  resources :carts, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
