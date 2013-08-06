class Logjuego < ActiveRecord::Base
  attr_accessible :juego_id, :loser, :player1, :player2, :points_involved, :winner
end
