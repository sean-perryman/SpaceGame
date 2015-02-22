class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :owned_by
      t.boolean :planetary_defense

      t.timestamps null: false
    end
  end
end
