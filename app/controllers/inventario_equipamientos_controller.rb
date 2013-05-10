class InventarioEquipamientosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /inventario_equipamientos
  # GET /inventario_equipamientos.json
  def index
    @inventario_equipamientos = InventarioEquipamiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventario_equipamientos }
    end
  end

  # GET /inventario_equipamientos/1
  # GET /inventario_equipamientos/1.json
  def show
    @inventario_equipamiento = InventarioEquipamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventario_equipamiento }
    end
  end

  # GET /inventario_equipamientos/new
  # GET /inventario_equipamientos/new.json
  def new
    @inventario_equipamiento = InventarioEquipamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventario_equipamiento }
    end
  end

  # GET /inventario_equipamientos/1/edit
  def edit
    @inventario_equipamiento = InventarioEquipamiento.find(params[:id])
  end

  # POST /inventario_equipamientos
  # POST /inventario_equipamientos.json
  def create
    @inventario_equipamiento = InventarioEquipamiento.new(params[:inventario_equipamiento])

    respond_to do |format|
      if @inventario_equipamiento.save
        format.html { redirect_to @inventario_equipamiento, notice: 'Inventario equipamiento was successfully created.' }
        format.json { render json: @inventario_equipamiento, status: :created, location: @inventario_equipamiento }
      else
        format.html { render action: "new" }
        format.json { render json: @inventario_equipamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventario_equipamientos/1
  # PUT /inventario_equipamientos/1.json
  def update
    @inventario_equipamiento = InventarioEquipamiento.find(params[:id])

    respond_to do |format|
      if @inventario_equipamiento.update_attributes(params[:inventario_equipamiento])
        format.html { redirect_to @inventario_equipamiento, notice: 'Inventario equipamiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventario_equipamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventario_equipamientos/1
  # DELETE /inventario_equipamientos/1.json
  def destroy
    @inventario_equipamiento = InventarioEquipamiento.find(params[:id])
    @inventario_equipamiento.destroy

    respond_to do |format|
      format.html { redirect_to inventario_equipamientos_url }
      format.json { head :no_content }
    end
  end

  def listado_escuela
    if params["idEscuela"] then
      @escuela = Escuela.find(params["idEscuela"].to_i)
      @inventario_equipamientos = InventarioEquipamiento.where(:escuela_id => params["idEscuela"].to_i).first
    
      if params["q"] then
        if params["q"] == "" then
          @renglon_inventario_equipamiento = @inventario_equipamientos.renglon_inventario_equipamientos
        else
          @renglon_inventario_equipamiento = @inventario_equipamientos.renglon_inventario_equipamientos.where(:tipo_de_equipamiento_id => params["q"].to_i)
        end
      else      
        @renglon_inventario_equipamiento = @inventario_equipamientos.renglon_inventario_equipamientos
      end  
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventario_equipamientos }
    end    
  end

  def agregar_elemento_inventario
    #debugger
    @inventario = params["idInventario"]
    @tipo_de_equipamiento = params["tipo_de_equipamiento"]
    @cantidad = params["cantidad"]
    if current_user then 
      #RenglonInventarioEquipamiento(id: integer, fecha_de_alta: date, cantidad: string, user: integer, inventario_equipamiento_id: integer, tipo_de_equipamiento_id: integer, quien_modifica: integer, created_at: datetime, updated_at: datetime) 
      RenglonInventarioEquipamiento.create(
                                            :cantidad => @cantidad.to_i, 
                                            :user => current_user.id, 
                                            :inventario_equipamiento_id => @inventario.to_i, 
                                            :tipo_de_equipamiento_id => @tipo_de_equipamiento.to_i
                                          )
    end
    redirect_to :back
  end
  def quitar_elemento_inventario
    #debugger
    if params["idElementoInventario"] then
      RenglonInventarioEquipamiento.find(params["idElementoInventario"].to_i).destroy
    end
    redirect_to :back
  end
  def ver_elemento_inventario
    
  end
  def modificar_elemento_inventario
    if params["pk"] and params["value"] then
      rie = RenglonInventarioEquipamiento.find(params["pk"].to_i)
      if rie then
        rie.cantidad = params["value"].to_i
        rie.save
      end
    end
  end

   
end
