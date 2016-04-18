class InventoryController < ApplicationController
  def index
    @inventory = Inventory.all.sort_by { |inventory| inventory.name }
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def create
  end

end
