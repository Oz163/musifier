class CreateCancions < ActiveRecord::Migration[5.0]
  def change
    create_table :cancions do |t|
      t.string :nombre, :null => false, :limit => 255
      t.float :duracion, :null => false
      t.integer :album_id, :null => false
      t.integer :estatus, :null => false
      t.timestamps
    end

    add_foreign_key :cancions, :albums
  end
end
