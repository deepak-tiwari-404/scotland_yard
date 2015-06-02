class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :width
      t.integer :height
      t.string  :name
      t.timestamps null: false
    end
  end
end
