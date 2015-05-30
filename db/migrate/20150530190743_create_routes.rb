class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :transit_mode
      t.timestamps null: false
    end
  end
end
