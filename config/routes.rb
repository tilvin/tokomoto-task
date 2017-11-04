Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'
  resources :posts
  resources :invoices, only: [:index]
  resources :pictures, only: [:index]
end
