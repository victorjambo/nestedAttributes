class AddProductToPics < ActiveRecord::Migration[5.0]
  def change
    add_reference :pics, :product, foreign_key: true
  end
end
