Rails.application.routes.draw do
  devise_for :users
  resources :inventory
  resources :categories

  root 'inventory#index'

end
