class AddImagesToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :image, :string
  end
end
