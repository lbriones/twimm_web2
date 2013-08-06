class CreatePuntos < ActiveRecord::Migration
  def change
    create_table :puntos do |t|
      t.integer :usuario_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
