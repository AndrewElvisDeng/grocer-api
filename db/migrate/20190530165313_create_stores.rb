class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :address
      t.string :street
      t.integer :zip
      t.integer :phone
      t.timestamps
    end
  end
end
