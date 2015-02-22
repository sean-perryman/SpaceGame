class CreateShipInventories < ActiveRecord::Migration
  def change
    create_table :ship_inventories do |t|
      t.references :ship, index: true
      t.references :item, index: true
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :ship_inventories, :ships
    add_foreign_key :ship_inventories, :items
  end
end
