class AgregarCantidadRenglonInventarioMenaje < ActiveRecord::Migration
  def up
  	add_column :renglon_inventario_menajes, :cantidad, :integer
  end

  def down
  	remove_column :renglon_inventario_menajes, :cantidad
  end
end
