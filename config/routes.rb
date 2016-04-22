Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :categories

  match '/contacts',  to: 'contacts#new',          via: 'get'
  resources "contacts", only: [:new, :create]

  get "/shopping_cart_items" => "shopping_cart_items#index"
  get "/shopping_cart_items/clear" => "shopping_cart_items#clear"
  get "/shopping_cart_items/:id" => "shopping_cart_items#add"

  root 'products#welcome'




end
