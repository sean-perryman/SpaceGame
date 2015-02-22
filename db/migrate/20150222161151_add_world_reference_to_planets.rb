class AddWorldReferenceToPlanets < ActiveRecord::Migration
  def change
    add_reference :planets, :world, index: true
    add_foreign_key :planets, :worlds
  end
end
