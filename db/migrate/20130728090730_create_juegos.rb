class CreateJuegos < ActiveRecord::Migration
  def change
    create_table :juegos do |t|
      t.string :nombre
      t.string :publisher
      t.text :descripcion
      t.string :foto
      t.integer :estado_id

      t.timestamps
    end
  end
end
