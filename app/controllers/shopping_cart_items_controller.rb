class ShoppingCartItemsController < ApplicationController

  def add
    id = params[:id]


    if session[:shopping_cart]
      shopping_cart = session[:shopping_cart]
    else
      session[:shopping_cart] = {}
      shopping_cart = session[:shopping_cart]
    end

    if shopping_cart[id]
      shopping_cart[id] += 1
    else
      shopping_cart[id] = 1
    end

    redirect_to shopping_cart_items_path
  end

  def clear
    session[:shopping_cart] = nil
    redirect_to shopping_cart_items_path
  end

  def index
    if session[:shopping_cart]
      @shopping_cart = session[:shopping_cart]
    else
      @shopping_cart = {}
    end
  end
end
