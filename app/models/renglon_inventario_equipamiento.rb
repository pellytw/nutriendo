class RenglonInventarioEquipamiento < ActiveRecord::Base
  attr_accessible :cantidad, :fecha_de_alta, :inventario_equipamiento_id, :tipo_de_equipamiento_id, :user_id
end
