class ChangeShippedViaToShipVia < ActiveRecord::Migration
  def change
    rename_column :orders, :shipped_via, :ship_via
  end
end
