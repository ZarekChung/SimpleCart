class Cart < ApplicationRecord
  has_many :cartitems, dependent: :destroy

  def add_product_items(product)
    exist_item = self.cartitems.find_by(product_id:product)
    if exist_item
      exist_item.quantity +=1
    else
      exist_item = exist_item.build(product_id:product.id)
    end
    
    exist_item.save!
    self.exist_item
  end
end
