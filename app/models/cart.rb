class Cart < ApplicationRecord
  has_many :cartitems, dependent: :destroy

  def add_product_items(product)
    puts product
    exist_item = self.cartitems.find_by(product:product)
    puts exist_item
    if exist_item
      exist_item.quantity +=1
      exist_item.save!
    else
      cart_item = cartitems.build(product:product)
        cart_item.save!
    end
    self.cartitems
  end
end
