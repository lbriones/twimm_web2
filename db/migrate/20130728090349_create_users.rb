class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :foto
      t.integer :nivel_id
      t.integer :estado_id

      t.timestamps
    end
  end
end
