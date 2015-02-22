class CreatePlanetInventories < ActiveRecord::Migration
  def change
    create_table :planet_inventories do |t|
      t.references :planet, index: true
      t.references :item, index: true
      t.integer :amount
      t.float :price_modifier

      t.timestamps null: false
    end
    add_foreign_key :planet_inventories, :planets
    add_foreign_key :planet_inventories, :items
  end
end
