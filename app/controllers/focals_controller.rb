class FocalsController < ApplicationController
  # GET /focals
  # GET /focals.xml
  def index
    @focals = Focal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @focals }
    end
  end

  # GET /focals/1
  # GET /focals/1.xml
  def show
    @focal = Focal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @focal }
    end
  end

  # GET /focals/new
  # GET /focals/new.xml
  def new
    @focal = Focal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @focal }
    end
  end

  # GET /focals/1/edit
  def edit
    @focal = Focal.find(params[:id])
  end

  # POST /focals
  # POST /focals.xml
  def create
    @focal = Focal.new(params[:focal])

    respond_to do |format|
      if @focal.save
        format.html { redirect_to(@focal, :notice => 'Focal was successfully created.') }
        format.xml  { render :xml => @focal, :status => :created, :location => @focal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /focals/1
  # PUT /focals/1.xml
  def update
    @focal = Focal.find(params[:id])

    respond_to do |format|
      if @focal.update_attributes(params[:focal])
        format.html { redirect_to(@focal, :notice => 'Focal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /focals/1
  # DELETE /focals/1.xml
  def destroy
    @focal = Focal.find(params[:id])
    @focal.destroy

    respond_to do |format|
      format.html { redirect_to(focals_url) }
      format.xml  { head :ok }
    end
  end
end
