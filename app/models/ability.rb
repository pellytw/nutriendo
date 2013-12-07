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

    elsif user.role? :delegado

        #Escuelas
        can :read, [Escuela]
        can :update, [Escuela]
        can :create, [Escuela]
        can :destroy,[Escuela]

        #renglon inventario menaje
        can :read, [RenglonInventarioMenaje]
        can :update, [RenglonInventarioMenaje]
        can :create, [RenglonInventarioMenaje]
        can :destroy, [RenglonInventarioMenaje]

        #renglon inventario equipamiento
        can :read, [RenglonInventarioEquipamiento]      
        can :update, [RenglonInventarioEquipamiento]
        can :create, [RenglonInventarioEquipamiento]
        can :destroy, [RenglonInventarioEquipamiento]

        can :listado_escuela, [InventarioMenaje]
        can :listado_escuela, [InventarioEquipamiento]

    elsif user.role? :bienes

        #Escuelas
        can :read, [Escuela]
        can :update, [Escuela]
        can :create, [Escuela]
        can :destroy,[Escuela]

        #renglon inventario menaje
        can :read, [RenglonInventarioMenaje]
        can :update, [RenglonInventarioMenaje]
        can :create, [RenglonInventarioMenaje]
        can :destroy, [RenglonInventarioMenaje]

        #renglon inventario equipamiento
        can :read, [RenglonInventarioEquipamiento]      
        can :update, [RenglonInventarioEquipamiento]
        can :create, [RenglonInventarioEquipamiento]
        can :destroy, [RenglonInventarioEquipamiento]

        can :listado_escuela, [InventarioMenaje]
        can :listado_escuela, [InventarioEquipamiento]

    elsif user.role? :compras

        #Escuelas
        can :read, [Escuela]
        can :update, [Escuela]
        can :create, [Escuela]
        can :destroy,[Escuela]

        #renglon inventario menaje
        can :read, [RenglonInventarioMenaje]
        can :update, [RenglonInventarioMenaje]
        can :create, [RenglonInventarioMenaje]
        can :destroy, [RenglonInventarioMenaje]

        #renglon inventario equipamiento
        can :read, [RenglonInventarioEquipamiento]      
        can :update, [RenglonInventarioEquipamiento]
        can :create, [RenglonInventarioEquipamiento]
        can :destroy, [RenglonInventarioEquipamiento]

        can :listado_escuela, [InventarioMenaje]
        can :listado_escuela, [InventarioEquipamiento]

    elsif user.role? :subsecretario

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
