class ProductDetail < ApplicationRecord
  def readonly? = true

  def self.ransackable_attributes(auth_object = nil)
    [ "average_rating", "created_at", "name", "price" ]
  end
end
