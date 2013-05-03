class RenglonInventarioMenaje < ActiveRecord::Base
  attr_accessible :fecha_de_alta, :inventario_menaje_id, :quien_modifica, :tipo_de_menaje_id, :user_id, :cantidad
  belongs_to :inventario_menaje
  belongs_to :tipo_de_menaje
end
