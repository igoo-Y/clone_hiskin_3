class OrderItem < ApplicationRecord
  belongs_to :pack
  belongs_to :order
end
