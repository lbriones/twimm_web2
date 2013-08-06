class Account < ActiveRecord::Base
  attr_accessible :cta_paypal, :estado_id, :nick, :usuario_id
end
