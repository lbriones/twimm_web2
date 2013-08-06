class Logtransfer < ActiveRecord::Base
  attr_accessible :fromaccount, :message, :monto, :status, :toaccount
end
