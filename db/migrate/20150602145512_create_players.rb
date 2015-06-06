class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :type
      t.integer :user_id
      t.integer :game_id
      t.integer :score, :default => 0
      t.timestamps
    end
  end
end
