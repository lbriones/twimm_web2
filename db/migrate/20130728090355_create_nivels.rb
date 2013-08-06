class CreateNivels < ActiveRecord::Migration
  def change
    create_table :nivels do |t|
      t.string :nombre
      t.integer :puntos_requeridos

      t.timestamps
    end
  end
end
