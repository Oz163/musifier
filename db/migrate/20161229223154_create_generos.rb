class CreateGeneros < ActiveRecord::Migration[5.0]
  def change
    create_table :generos do |t|
      t.string :nombre, :null => false, :limit => 255
      t.integer :estatus, :null => false
      t.timestamps
    end
  end
end
