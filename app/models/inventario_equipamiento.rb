class InventarioEquipamiento < ActiveRecord::Base

  attr_accessible :escuela_id, :ultima_modificacion

  belongs_to :escuela

end
