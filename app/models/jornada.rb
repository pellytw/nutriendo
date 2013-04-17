class Jornada < ActiveRecord::Base

  attr_accessible :nombre

  has_many :escuela

  def to_s
  	self.nombre
  end

end
