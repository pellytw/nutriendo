class Escuela < ActiveRecord::Base

  attr_accessible :jornada_id, :localidad_id, :nivel_id, :nombre, :numero

  belongs_to :localidad
  belongs_to :nivel
  belongs_to :jornada

  has_many :inventario_equipamiento, :dependent => :destroy
  has_many :inventario_menaje, :dependent => :destroy

  def to_s
  	self.numero.to_s + " " + self.nombre
  end

end
