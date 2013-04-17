class CreateInventarioMenajes < ActiveRecord::Migration
  def change
    create_table :inventario_menajes do |t|
      t.integer :escuela_id
      t.date :ultima_modificacion

      t.timestamps
    end
  end
end
