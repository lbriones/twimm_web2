class CreateLogtransfers < ActiveRecord::Migration
  def change
    create_table :logtransfers do |t|
      t.integer :fromaccount
      t.integer :toaccount
      t.decimal :monto
      t.integer :status
      t.string :message

      t.timestamps
    end
  end
end
