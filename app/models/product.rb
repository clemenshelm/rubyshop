class Product < ApplicationRecord
  has_many :ratings

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "name", "price"]
  end
end
