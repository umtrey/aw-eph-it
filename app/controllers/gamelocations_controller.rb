class GamelocationsController < ApplicationController
  # GET /gamelocations
  # GET /gamelocations.xml
  def index
    @gamelocations = Gamelocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gamelocations }
    end
  end

  # GET /gamelocations/1
  # GET /gamelocations/1.xml
  def show
    @gamelocation = Gamelocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gamelocation }
    end
  end

  # GET /gamelocations/new
  # GET /gamelocations/new.xml
  def new
    @gamelocation = Gamelocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gamelocation }
    end
  end

  # GET /gamelocations/1/edit
  def edit
    @gamelocation = Gamelocation.find(params[:id])
  end

  # POST /gamelocations
  # POST /gamelocations.xml
  def create
    @gamelocation = Gamelocation.new(params[:gamelocation])

    respond_to do |format|
      if @gamelocation.save
        format.html { redirect_to(@gamelocation, :notice => 'Gamelocation was successfully created.') }
        format.xml  { render :xml => @gamelocation, :status => :created, :location => @gamelocation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gamelocation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gamelocations/1
  # PUT /gamelocations/1.xml
  def update
    @gamelocation = Gamelocation.find(params[:id])

    respond_to do |format|
      if @gamelocation.update_attributes(params[:gamelocation])
        format.html { redirect_to(@gamelocation, :notice => 'Gamelocation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gamelocation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gamelocations/1
  # DELETE /gamelocations/1.xml
  def destroy
    @gamelocation = Gamelocation.find(params[:id])
    @gamelocation.destroy

    respond_to do |format|
      format.html { redirect_to(gamelocations_url) }
      format.xml  { head :ok }
    end
  end
end
