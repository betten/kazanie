class ImagealsController < ApplicationController
  # GET /imageals
  # GET /imageals.xml
  def index
    @imageals = Imageal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @imageals }
    end
  end

  # GET /imageals/1
  # GET /imageals/1.xml
  def show
    @imageal = Imageal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imageal }
    end
  end

  # GET /imageals/new
  # GET /imageals/new.xml
  def new
    @imageal = Imageal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @imageal }
    end
  end

  # GET /imageals/1/edit
  def edit
    @imageal = Imageal.find(params[:id])
  end

  # POST /imageals
  # POST /imageals.xml
  def create
    @imageal = Imageal.new(params[:imageal])

    respond_to do |format|
      if @imageal.save
        format.html { redirect_to(@imageal, :notice => 'Imageal was successfully created.') }
        format.xml  { render :xml => @imageal, :status => :created, :location => @imageal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @imageal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /imageals/1
  # PUT /imageals/1.xml
  def update
    @imageal = Imageal.find(params[:id])

    respond_to do |format|
      if @imageal.update_attributes(params[:imageal])
        format.html { redirect_to(@imageal, :notice => 'Imageal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @imageal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /imageals/1
  # DELETE /imageals/1.xml
  def destroy
    @imageal = Imageal.find(params[:id])
    @imageal.destroy

    respond_to do |format|
      format.html { redirect_to(imageals_url) }
      format.xml  { head :ok }
    end
  end
end
