class AddMaxCargoToShips < ActiveRecord::Migration
  def change
    add_column :ships, :max_cargo, :integer
  end
end
