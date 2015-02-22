class CreatePlayerShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :base_cargo
      t.integer :base_fuel
      t.integer :base_fighters

      t.timestamps null: false
    end

    create_table :player_ships do |t|
      t.belongs_to :captain, index: true
      t.references :ship, index: true
      t.string :name
      t.integer :fuel_total
      t.integer :fuel_remaining
      t.integer :cargo_spaces
      t.integer :fighters

      t.timestamps null: false
    end
    add_foreign_key :player_ships, :captains
    add_foreign_key :player_ships, :ships
  end
end
