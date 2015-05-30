class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :x_cordinate
      t.integer :y_cordinate
      t.timestamps null: false
    end
  end
end
