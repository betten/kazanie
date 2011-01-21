class CroppalsController < ApplicationController
  # GET /croppals
  # GET /croppals.xml
  def index
    @croppals = Croppal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @croppals }
    end
  end

  # GET /croppals/1
  # GET /croppals/1.xml
  def show
    @croppal = Croppal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @croppal }
    end
  end

  # GET /croppals/new
  # GET /croppals/new.xml
  def new
    @croppal = Croppal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @croppal }
    end
  end

  # GET /croppals/1/edit
  def edit
    @croppal = Croppal.find(params[:id])
  end

  # POST /croppals
  # POST /croppals.xml
  def create
    @croppal = Croppal.new(params[:croppal])

    respond_to do |format|
      if @croppal.save
        format.html { redirect_to(@croppal, :notice => 'Croppal was successfully created.') }
        format.xml  { render :xml => @croppal, :status => :created, :location => @croppal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @croppal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /croppals/1
  # PUT /croppals/1.xml
  def update
    @croppal = Croppal.find(params[:id])

    respond_to do |format|
      if @croppal.update_attributes(params[:croppal])
        format.html { redirect_to(@croppal, :notice => 'Croppal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @croppal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /croppals/1
  # DELETE /croppals/1.xml
  def destroy
    @croppal = Croppal.find(params[:id])
    @croppal.destroy

    respond_to do |format|
      format.html { redirect_to(croppals_url) }
      format.xml  { head :ok }
    end
  end
end
