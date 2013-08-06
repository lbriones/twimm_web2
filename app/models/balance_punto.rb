class BalancePunto < ActiveRecord::Base
  attr_accessible :credit, :debit, :motivo_id, :usuario_id
end
