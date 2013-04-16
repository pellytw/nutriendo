class TipoDeEquipamientosController < ApplicationController
  # GET /tipo_de_equipamientos
  # GET /tipo_de_equipamientos.json
  def index
    @tipo_de_equipamientos = TipoDeEquipamiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_equipamientos }
    end
  end

  # GET /tipo_de_equipamientos/1
  # GET /tipo_de_equipamientos/1.json
  def show
    @tipo_de_equipamiento = TipoDeEquipamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_equipamiento }
    end
  end

  # GET /tipo_de_equipamientos/new
  # GET /tipo_de_equipamientos/new.json
  def new
    @tipo_de_equipamiento = TipoDeEquipamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_equipamiento }
    end
  end

  # GET /tipo_de_equipamientos/1/edit
  def edit
    @tipo_de_equipamiento = TipoDeEquipamiento.find(params[:id])
  end

  # POST /tipo_de_equipamientos
  # POST /tipo_de_equipamientos.json
  def create
    @tipo_de_equipamiento = TipoDeEquipamiento.new(params[:tipo_de_equipamiento])

    respond_to do |format|
      if @tipo_de_equipamiento.save
        format.html { redirect_to @tipo_de_equipamiento, notice: 'Tipo de equipamiento was successfully created.' }
        format.json { render json: @tipo_de_equipamiento, status: :created, location: @tipo_de_equipamiento }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_equipamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_equipamientos/1
  # PUT /tipo_de_equipamientos/1.json
  def update
    @tipo_de_equipamiento = TipoDeEquipamiento.find(params[:id])

    respond_to do |format|
      if @tipo_de_equipamiento.update_attributes(params[:tipo_de_equipamiento])
        format.html { redirect_to @tipo_de_equipamiento, notice: 'Tipo de equipamiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_equipamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_equipamientos/1
  # DELETE /tipo_de_equipamientos/1.json
  def destroy
    @tipo_de_equipamiento = TipoDeEquipamiento.find(params[:id])
    @tipo_de_equipamiento.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_equipamientos_url }
      format.json { head :no_content }
    end
  end
end
