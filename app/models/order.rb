class Order < ApplicationRecord
  has_many :orderitems, dependent: :destroy
  has_many :payments, dependent: :destroy
  belongs_to :user
end
