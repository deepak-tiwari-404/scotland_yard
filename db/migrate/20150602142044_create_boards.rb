class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :width, default: 800
      t.integer :height, default: 600
      t.string  :name
      t.timestamps null: false
    end
  end
end
