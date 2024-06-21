class Order < ApplicationRecord
  has_many :order_items
  has_many :vinyls, through: :order_items

  validates :reference, presence: true, uniqueness: true
end
