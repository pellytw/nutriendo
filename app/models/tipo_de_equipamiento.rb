class TipoDeEquipamiento < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  def to_s
  	self.nombre
  end
end
