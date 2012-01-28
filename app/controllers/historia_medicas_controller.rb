class HistoriaMedicasController < ApplicationController
  # GET /historia_medicas
  # GET /historia_medicas.json
  def index
    @historia_medicas = HistoriaMedica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @historia_medicas }
    end
  end

  # GET /historia_medicas/1
  # GET /historia_medicas/1.json
  def show
    @historia_medica = HistoriaMedica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @historia_medica }
    end
  end

  # GET /historia_medicas/new
  # GET /historia_medicas/new.json
  def new
    @historia_medica = HistoriaMedica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @historia_medica }
    end
  end

  # GET /historia_medicas/1/edit
  def edit
    @historia_medica = HistoriaMedica.find(params[:id])
  end

  # POST /historia_medicas
  # POST /historia_medicas.json
  def create
    @historia_medica = HistoriaMedica.new(params[:historia_medica])

    respond_to do |format|
      if @historia_medica.save
        format.html { redirect_to @historia_medica, :notice => 'Historia medica was successfully created.' }
        format.json { render :json => @historia_medica, :status => :created, :location => @historia_medica }
      else
        format.html { render :action => "new" }
        format.json { render :json => @historia_medica.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /historia_medicas/1
  # PUT /historia_medicas/1.json
  def update
    @historia_medica = HistoriaMedica.find(params[:id])

    respond_to do |format|
      if @historia_medica.update_attributes(params[:historia_medica])
        format.html { redirect_to @historia_medica, :notice => 'Historia medica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @historia_medica.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_medicas/1
  # DELETE /historia_medicas/1.json
  def destroy
    @historia_medica = HistoriaMedica.find(params[:id])
    @historia_medica.destroy

    respond_to do |format|
      format.html { redirect_to historia_medicas_url }
      format.json { head :no_content }
    end
  end
end
