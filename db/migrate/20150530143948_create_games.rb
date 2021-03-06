class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number_of_detectives
      t.integer :board_id
      t.integer :winner_id
      t.integer :maximum_moves
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps null: false
    end
  end
end
