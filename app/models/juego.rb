class Juego < ActiveRecord::Base
  attr_accessible :descripcion, :estado_id, :foto, :nombre, :publisher
end
