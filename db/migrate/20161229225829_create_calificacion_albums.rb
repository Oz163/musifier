class CreateCalificacionAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :calificacion_albums do |t|
      t.integer :album_id, :null => false
      t.integer :usuario_id, :null => false
      t.integer :calificacion, :null => false
      t.timestamps
    end

    add_foreign_key :calificacion_albums, :albums
    add_foreign_key :calificacion_albums, :usuarios
  end
end
