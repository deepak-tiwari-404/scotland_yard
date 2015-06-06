class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :player_id
      t.integer :from_id
      t.integer :to_id
      t.integer :mode
      t.timestamps null: false
    end
  end
end
