class ChangeQuantityToInteger < ActiveRecord::Migration[7.0]
  def change
    rename_column :carted_products, :quantity, :integer
  end
end
