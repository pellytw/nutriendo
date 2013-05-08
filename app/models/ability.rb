class Ability
  include CanCan::Ability

#   def initialize(user)
#    if user then
#	    user.roles.each do |role|
#	      role.permissions.each do |permission|
#	        can permission.conduct.to_sym, permission.regulator.constantize
#	      end
#	 end
#	end

#   end

def initialize(user)

	user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
    
    elsif user.role? :nutriendo

      	#Escuelas
      	can :read, [Escuela]

        #renglon inventario menaje
        can :read, [RenglonInventarioMenaje]

        #renglon inventario equipamiento
        can :read, [RenglonInventarioEquipamiento]      

        can :listado_escuela, [InventarioMenaje]
        can :listado_escuela, [InventarioEquipamiento]

    end
end

end
