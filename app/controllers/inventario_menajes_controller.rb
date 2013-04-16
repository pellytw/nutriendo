class InventarioMenajesController < ApplicationController
  # GET /inventario_menajes
  # GET /inventario_menajes.json
  def index
    @inventario_menajes = InventarioMenaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventario_menajes }
    end
  end

  # GET /inventario_menajes/1
  # GET /inventario_menajes/1.json
  def show
    @inventario_menaje = InventarioMenaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventario_menaje }
    end
  end

  # GET /inventario_menajes/new
  # GET /inventario_menajes/new.json
  def new
    @inventario_menaje = InventarioMenaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventario_menaje }
    end
  end

  # GET /inventario_menajes/1/edit
  def edit
    @inventario_menaje = InventarioMenaje.find(params[:id])
  end

  # POST /inventario_menajes
  # POST /inventario_menajes.json
  def create
    @inventario_menaje = InventarioMenaje.new(params[:inventario_menaje])

    respond_to do |format|
      if @inventario_menaje.save
        format.html { redirect_to @inventario_menaje, notice: 'Inventario menaje was successfully created.' }
        format.json { render json: @inventario_menaje, status: :created, location: @inventario_menaje }
      else
        format.html { render action: "new" }
        format.json { render json: @inventario_menaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventario_menajes/1
  # PUT /inventario_menajes/1.json
  def update
    @inventario_menaje = InventarioMenaje.find(params[:id])

    respond_to do |format|
      if @inventario_menaje.update_attributes(params[:inventario_menaje])
        format.html { redirect_to @inventario_menaje, notice: 'Inventario menaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventario_menaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventario_menajes/1
  # DELETE /inventario_menajes/1.json
  def destroy
    @inventario_menaje = InventarioMenaje.find(params[:id])
    @inventario_menaje.destroy

    respond_to do |format|
      format.html { redirect_to inventario_menajes_url }
      format.json { head :no_content }
    end
  end
end
