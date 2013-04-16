class Escuela < ActiveRecord::Base
  attr_accessible :jornada_id, :localidad_id, :nivel_id, :nombre, :numero
end
