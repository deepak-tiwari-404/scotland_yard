class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :x_loc, null: false
      t.integer :y_loc, null: false
      t.integer :board_id, null: false
      t.timestamps null: false
    end
  end
end
