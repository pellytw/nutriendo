class CreateRenglonInventarioMenajes < ActiveRecord::Migration
  def change
    create_table :renglon_inventario_menajes do |t|
      t.integer :user_id
      t.integer :quien_modifica
      t.integer :tipo_de_menaje_id
      t.date :fecha_de_alta
      t.integer :inventario_menaje_id

      t.timestamps
    end
  end
end
