class CreateBalancePuntos < ActiveRecord::Migration
  def change
    create_table :balance_puntos do |t|
      t.integer :usuario_id
      t.decimal :debit
      t.decimal :credit
      t.integer :motivo_id

      t.timestamps
    end
  end
end
