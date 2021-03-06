Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
