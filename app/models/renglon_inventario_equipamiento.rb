class RenglonInventarioEquipamiento < ActiveRecord::Base

  attr_accessible :cantidad, :fecha_de_alta, :inventario_equipamiento_id, :quien_modifica, :tipo_de_equipamiento_id, :user
  belongs_to :inventario_equipamiento
  belongs_to :tipo_de_equipamiento
end
