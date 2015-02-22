class CreateCaptains < ActiveRecord::Migration
  def change
    create_table :captains do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.references :world
      t.references :cartel

      t.timestamps null: false
    end
    add_foreign_key :captains, :users
  end
end
