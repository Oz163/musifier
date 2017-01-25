class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre, :null => false, :limit => 255
      t.string :login, :null => false, :limit => 255
      t.string :clave, :null => false, :limit => 255
      t.date :fecha_nacimiento, :null => false
      t.integer :sexo, :null => false
      t.integer :estatus, :null => false
      t.timestamps
    end
  end
end
