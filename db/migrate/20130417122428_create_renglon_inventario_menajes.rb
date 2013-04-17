class CreateRenglonInventarioMenajes < ActiveRecord::Migration
  def change
    create_table :renglon_inventario_menajes do |t|
      t.date :fecha_de_alta
      t.string :cantidad
      t.integer :user
      t.integer :inventario_equipamiento_id
      t.integer :tipo_de_equipamiento_id
      t.integer :quien_modifica

      t.timestamps
    end
  end
end
