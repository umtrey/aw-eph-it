class GameingredientsController < ApplicationController
  # GET /gameingredients
  # GET /gameingredients.xml
  def index
    @gameingredients = Gameingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gameingredients }
    end
  end

  # GET /gameingredients/1
  # GET /gameingredients/1.xml
  def show
    @gameingredient = Gameingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gameingredient }
    end
  end

  # GET /gameingredients/new
  # GET /gameingredients/new.xml
  def new
    @gameingredient = Gameingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gameingredient }
    end
  end

  # GET /gameingredients/1/edit
  def edit
    @gameingredient = Gameingredient.find(params[:id])
  end

  # POST /gameingredients
  # POST /gameingredients.xml
  def create
    @gameingredient = Gameingredient.new(params[:gameingredient])

    respond_to do |format|
      if @gameingredient.save
        format.html { redirect_to(@gameingredient, :notice => 'Gameingredient was successfully created.') }
        format.xml  { render :xml => @gameingredient, :status => :created, :location => @gameingredient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gameingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gameingredients/1
  # PUT /gameingredients/1.xml
  def update
    @gameingredient = Gameingredient.find(params[:id])

    respond_to do |format|
      if @gameingredient.update_attributes(params[:gameingredient])
        format.html { redirect_to(@gameingredient, :notice => 'Gameingredient was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gameingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gameingredients/1
  # DELETE /gameingredients/1.xml
  def destroy
    @gameingredient = Gameingredient.find(params[:id])
    @gameingredient.destroy

    respond_to do |format|
      format.html { redirect_to(gameingredients_url) }
      format.xml  { head :ok }
    end
  end
end
