class AddFieldsToShips < ActiveRecord::Migration
  def change
    add_column :ships, :reactor_upgrades, :integer
    add_column :ships, :torpedo_bays, :integer
    add_column :ships, :ship_fighting_odds, :float
    add_column :ships, :max_fighters, :integer
    add_column :ships, :max_shields, :integer
  end
end
