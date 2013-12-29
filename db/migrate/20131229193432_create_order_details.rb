class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :unit_price
      t.integer :quantity
      t.float :discount

      t.timestamps
    end
  end
end
