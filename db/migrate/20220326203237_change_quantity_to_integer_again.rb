class ChangeQuantityToIntegerAgain < ActiveRecord::Migration[7.0]
  def change
    change_column :carted_products, :integer, 'integer USING CAST(integer AS integer)'
  end
end
