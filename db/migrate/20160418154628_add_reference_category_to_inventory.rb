class AddReferenceCategoryToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :category, index: true, foreign_key: true
  end
end
