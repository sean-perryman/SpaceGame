class RemoveBaseFightersFromShips < ActiveRecord::Migration
  def change
    remove_column :ships, :base_fighters, :integer
  end
end
