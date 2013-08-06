class CreateLogjuegos < ActiveRecord::Migration
  def change
    create_table :logjuegos do |t|
      t.integer :juego_id
      t.integer :player1
      t.integer :player2
      t.integer :winner
      t.integer :loser
      t.integer :points_involved

      t.timestamps
    end
  end
end
