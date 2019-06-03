class AddColumnToStock < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :store_id, :integer
    add_column :stocks, :product_id, :integer
  end
end
