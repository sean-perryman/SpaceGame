class AddCostToShips < ActiveRecord::Migration
  def change
    add_column :ships, :cost, :integer
  end
end
