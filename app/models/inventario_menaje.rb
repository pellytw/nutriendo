class InventarioMenaje < ActiveRecord::Base
  attr_accessible :escuela_id, :ultima_modificacion
  has_many :renglon_inventario_menajes
  belongs_to :escuela
end
