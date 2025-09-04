class CreateProductDetails < ActiveRecord::Migration[8.0]
  def change
    create_view :product_details
  end
end
