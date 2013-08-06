class Nivel < ActiveRecord::Base
  attr_accessible :nombre, :puntos_requeridos
  has_many :users
end
