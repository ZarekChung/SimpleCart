class AddDefaultQuantity < ActiveRecord::Migration[5.1]
  def change
    change_column :cartitems, :quantity, :integer, default: 1
    change_column :orderitems, :quantity, :integer, default: 1
  end
end
