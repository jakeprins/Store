class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)

    if params[:search]
      products = Product.where("name ILIKE ?", "%#{params[:search]}%")
      if products.present?
        @products = products
      else
        @products = Product.order(:name)
      end
    else
      @products = Product.order(:name)
    end


  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  end

end
