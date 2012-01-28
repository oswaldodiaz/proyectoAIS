class CitaController < ApplicationController
  # GET /cita
  # GET /cita.json
  def index
    @cita = Citum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cita }
    end
  end

  # GET /cita/1
  # GET /cita/1.json
  def show
    @citum = Citum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @citum }
    end
  end

  # GET /cita/new
  # GET /cita/new.json
  def new
    @citum = Citum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @citum }
    end
  end

  # GET /cita/1/edit
  def edit
    @citum = Citum.find(params[:id])
  end

  # POST /cita
  # POST /cita.json
  def create
    @citum = Citum.new(params[:citum])

    respond_to do |format|
      if @citum.save
        format.html { redirect_to @citum, :notice => 'Citum was successfully created.' }
        format.json { render :json => @citum, :status => :created, :location => @citum }
      else
        format.html { render :action => "new" }
        format.json { render :json => @citum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cita/1
  # PUT /cita/1.json
  def update
    @citum = Citum.find(params[:id])

    respond_to do |format|
      if @citum.update_attributes(params[:citum])
        format.html { redirect_to @citum, :notice => 'Citum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @citum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cita/1
  # DELETE /cita/1.json
  def destroy
    @citum = Citum.find(params[:id])
    @citum.destroy

    respond_to do |format|
      format.html { redirect_to cita_url }
      format.json { head :no_content }
    end
  end
end
