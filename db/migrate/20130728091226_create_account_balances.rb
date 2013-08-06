class CreateAccountBalances < ActiveRecord::Migration
  def change
    create_table :account_balances do |t|
      t.integer :account_id
      t.decimal :debit
      t.decimal :credit
      t.decimal :value
      t.integer :motivo_id

      t.timestamps
    end
  end
end
