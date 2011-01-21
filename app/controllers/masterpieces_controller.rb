class MasterpiecesController < ApplicationController
  # GET /masterpieces
  # GET /masterpieces.xml
  def index
    @masterpieces = Masterpiece.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @masterpieces }
    end
  end

  # GET /masterpieces/1
  # GET /masterpieces/1.xml
  def show
    @masterpiece = Masterpiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @masterpiece }
    end
  end

  # GET /masterpieces/new
  # GET /masterpieces/new.xml
  def new
    @masterpiece = Masterpiece.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @masterpiece }
    end
  end

  # GET /masterpieces/1/edit
  def edit
    @masterpiece = Masterpiece.find(params[:id])
  end

  # POST /masterpieces
  # POST /masterpieces.xml
  def create
    @masterpiece = Masterpiece.new(params[:masterpiece])

    respond_to do |format|
      if @masterpiece.save
        format.html { redirect_to(@masterpiece, :notice => 'Masterpiece was successfully created.') }
        format.xml  { render :xml => @masterpiece, :status => :created, :location => @masterpiece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /masterpieces/1
  # PUT /masterpieces/1.xml
  def update
    @masterpiece = Masterpiece.find(params[:id])

    respond_to do |format|
      if @masterpiece.update_attributes(params[:masterpiece])
        format.html { redirect_to(@masterpiece, :notice => 'Masterpiece was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /masterpieces/1
  # DELETE /masterpieces/1.xml
  def destroy
    @masterpiece = Masterpiece.find(params[:id])
    @masterpiece.destroy

    respond_to do |format|
      format.html { redirect_to(masterpieces_url) }
      format.xml  { head :ok }
    end
  end
end
