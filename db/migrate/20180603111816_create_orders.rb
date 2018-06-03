class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :amount
      t.integer :sn
      t.string :shipping_status
      t.string :payment_status
      t.timestamps
    end
  end
end
