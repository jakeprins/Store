Rails.application.routes.draw do
  devise_for :users
  resources :inventory
  resources :categories

  get "/shopping_cart_items" => "shopping_cart_items#index"
  get "/shopping_cart_items/clear" => "shopping_cart_items#clear"
  get "/shopping_cart_items/:id" => "shopping_cart_items#add"

  root 'inventory#welcome'

end
