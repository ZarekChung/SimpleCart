class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :sn
      t.text :params
      t.integer :amount
      t.string :payment_method
      t.datetime :paid_at
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
