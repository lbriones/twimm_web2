class Estado < ActiveRecord::Base
  attr_accessible :nombre
  has_many :users
end
