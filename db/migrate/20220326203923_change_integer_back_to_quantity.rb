class ChangeIntegerBackToQuantity < ActiveRecord::Migration[7.0]
  def change
    rename_column :carted_products, :integer, :quantity
  end
end
