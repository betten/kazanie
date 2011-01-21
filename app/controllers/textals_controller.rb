class TextalsController < ApplicationController
  # GET /textals
  # GET /textals.xml
  def index
    @textals = Textal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @textals }
    end
  end

  # GET /textals/1
  # GET /textals/1.xml
  def show
    @textal = Textal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textal }
    end
  end

  # GET /textals/new
  # GET /textals/new.xml
  def new
    @textal = Textal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @textal }
    end
  end

  # GET /textals/1/edit
  def edit
    @textal = Textal.find(params[:id])
  end

  # POST /textals
  # POST /textals.xml
  def create
    @textal = Textal.new(params[:textal])

    respond_to do |format|
      if @textal.save
        format.html { redirect_to(@textal, :notice => 'Textal was successfully created.') }
        format.xml  { render :xml => @textal, :status => :created, :location => @textal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @textal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /textals/1
  # PUT /textals/1.xml
  def update
    @textal = Textal.find(params[:id])

    respond_to do |format|
      if @textal.update_attributes(params[:textal])
        format.html { redirect_to(@textal, :notice => 'Textal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /textals/1
  # DELETE /textals/1.xml
  def destroy
    @textal = Textal.find(params[:id])
    @textal.destroy

    respond_to do |format|
      format.html { redirect_to(textals_url) }
      format.xml  { head :ok }
    end
  end
end
