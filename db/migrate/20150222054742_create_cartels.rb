class CreateCartels < ActiveRecord::Migration
  def change
    create_table :cartels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
