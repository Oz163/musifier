class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :nombre, :null => false, :limit => 255
      t.date :fecha_publicacion, :null => false
      t.integer :genero_id, :null => false
      t.integer :artista_id, :null => false
      t.integer :estatus, :null => false
      t.timestamps
    end

    add_foreign_key :albums, :artistas
    add_foreign_key :albums, :generos
  end
end
