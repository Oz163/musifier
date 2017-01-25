class CreateCalificacionCancions < ActiveRecord::Migration[5.0]
  def change
    create_table :calificacion_cancions do |t|
      t.integer :cancion_id, :null => false
      t.integer :usuario_id, :null => false
      t.integer :calificacion, :null => false
      t.timestamps
    end

    add_foreign_key :calificacion_cancions, :cancions
    add_foreign_key :calificacion_cancions, :usuarios
  end
end
