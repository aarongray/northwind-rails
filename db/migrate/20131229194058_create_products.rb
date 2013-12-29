class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :supplier_id
      t.integer :category_id
      t.string :quantity_per_unit
      t.float :unit_price
      t.integer :units_in_stock
      t.integer :units_on_order
      t.integer :reorder_level
      t.boolean :discontinued

      t.timestamps
    end
  end
end
