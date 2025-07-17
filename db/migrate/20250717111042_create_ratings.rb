class CreateRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :stars

      t.timestamps
    end
  end
end
