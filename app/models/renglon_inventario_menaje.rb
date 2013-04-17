class RenglonInventarioMenaje < ActiveRecord::Base
  attr_accessible :cantidad, :fecha_de_alta, :inventario_equipamiento_id, :quien_modifica, :tipo_de_equipamiento_id, :user
end
