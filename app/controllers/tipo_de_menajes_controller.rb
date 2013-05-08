class TipoDeMenajesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /tipo_de_menajes
  # GET /tipo_de_menajes.json
  def index
    @tipo_de_menajes = TipoDeMenaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_de_menajes }
    end
  end

  # GET /tipo_de_menajes/1
  # GET /tipo_de_menajes/1.json
  def show
    @tipo_de_menaje = TipoDeMenaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_de_menaje }
    end
  end

  # GET /tipo_de_menajes/new
  # GET /tipo_de_menajes/new.json
  def new
    @tipo_de_menaje = TipoDeMenaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_de_menaje }
    end
  end

  # GET /tipo_de_menajes/1/edit
  def edit
    @tipo_de_menaje = TipoDeMenaje.find(params[:id])
  end

  # POST /tipo_de_menajes
  # POST /tipo_de_menajes.json
  def create
    @tipo_de_menaje = TipoDeMenaje.new(params[:tipo_de_menaje])

    respond_to do |format|
      if @tipo_de_menaje.save
        format.html { redirect_to @tipo_de_menaje, notice: 'Tipo de menaje was successfully created.' }
        format.json { render json: @tipo_de_menaje, status: :created, location: @tipo_de_menaje }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_de_menaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_de_menajes/1
  # PUT /tipo_de_menajes/1.json
  def update
    @tipo_de_menaje = TipoDeMenaje.find(params[:id])

    respond_to do |format|
      if @tipo_de_menaje.update_attributes(params[:tipo_de_menaje])
        format.html { redirect_to @tipo_de_menaje, notice: 'Tipo de menaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_de_menaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_menajes/1
  # DELETE /tipo_de_menajes/1.json
  def destroy
    @tipo_de_menaje = TipoDeMenaje.find(params[:id])
    @tipo_de_menaje.destroy

    respond_to do |format|
      format.html { redirect_to tipo_de_menajes_url }
      format.json { head :no_content }
    end
  end
end
