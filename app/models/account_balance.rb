class AccountBalance < ActiveRecord::Base
  attr_accessible :account_id, :credit, :debit, :motivo_id, :value
end
