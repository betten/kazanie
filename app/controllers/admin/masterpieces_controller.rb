class Admin::MasterpiecesController < ApplicationController

  before_filter :authenticate_user!

  # GET /admin/masterpieces
  # GET /admin/masterpieces.xml
  def index
    @admin_masterpieces = Admin::Masterpiece.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_masterpieces }
    end
  end

  # GET /admin/masterpieces/1
  # GET /admin/masterpieces/1.xml
  def show
    @admin_masterpiece = Admin::Masterpiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_masterpiece }
    end
  end

  # GET /admin/masterpieces/new
  # GET /admin/masterpieces/new.xml
  def new
    @admin_masterpiece = Admin::Masterpiece.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_masterpiece }
    end
  end

  # GET /admin/masterpieces/1/edit
  def edit
    @admin_masterpiece = Admin::Masterpiece.find(params[:id])
  end

  # POST /admin/masterpieces
  # POST /admin/masterpieces.xml
  def create
    @admin_masterpiece = Admin::Masterpiece.new(params[:admin_masterpiece])

    respond_to do |format|
      if @admin_masterpiece.save
        format.html { redirect_to(@admin_masterpiece, :notice => 'Masterpiece was successfully created.') }
        format.xml  { render :xml => @admin_masterpiece, :status => :created, :location => @admin_masterpiece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/masterpieces/1
  # PUT /admin/masterpieces/1.xml
  def update
    @admin_masterpiece = Admin::Masterpiece.find(params[:id])

    respond_to do |format|
      if @admin_masterpiece.update_attributes(params[:admin_masterpiece])
        format.html { redirect_to(@admin_masterpiece, :notice => 'Masterpiece was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/masterpieces/1
  # DELETE /admin/masterpieces/1.xml
  def destroy
    @admin_masterpiece = Admin::Masterpiece.find(params[:id])
    @admin_masterpiece.destroy

    respond_to do |format|
      format.html { redirect_to(admin_masterpieces_url) }
      format.xml  { head :ok }
    end
  end
end
