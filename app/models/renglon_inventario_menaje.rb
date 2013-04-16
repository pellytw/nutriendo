class RenglonInventarioMenaje < ActiveRecord::Base
  attr_accessible :cantidad, :fecha_de_alta, :inventario_menaje_id, :tipo_de_menaje_id, :user_id
end
