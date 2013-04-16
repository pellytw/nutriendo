class CreateRenglonInventarioEquipamientos < ActiveRecord::Migration
  def change
    create_table :renglon_inventario_equipamientos do |t|
      t.date :fecha_de_alta
      t.string :cantidad
      t.integer :user_id
      t.integer :inventario_equipamiento_id
      t.integer :tipo_de_equipamiento_id

      t.timestamps
    end
  end
end
