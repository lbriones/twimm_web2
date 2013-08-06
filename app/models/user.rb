class User < ActiveRecord::Base
  attr_accessible :estado_id, :foto, :nivel_id, :password, :username
  belongs_to :nivel
  belongs_to :estado
end
