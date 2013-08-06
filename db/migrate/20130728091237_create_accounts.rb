class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :usuario_id
      t.string :nick
      t.string :cta_paypal
      t.integer :estado_id

      t.timestamps
    end
  end
end
