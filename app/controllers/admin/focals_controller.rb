class Admin::FocalsController < ApplicationController

  before_filter :authenticate_user!

  # GET /admin/focals
  # GET /admin/focals.xml
  def index
    @admin_focals = Admin::Focal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_focals }
    end
  end

  # GET /admin/focals/1
  # GET /admin/focals/1.xml
  def show
    @admin_focal = Admin::Focal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_focal }
    end
  end

  # GET /admin/focals/new
  # GET /admin/focals/new.xml
  def new
    @admin_focal = Admin::Focal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_focal }
    end
  end

  # GET /admin/focals/1/edit
  def edit
    @admin_focal = Admin::Focal.find(params[:id])
  end

  # POST /admin/focals
  # POST /admin/focals.xml
  def create
    @admin_focal = Admin::Focal.new(params[:admin_focal])

    respond_to do |format|
      if @admin_focal.save
        format.html { redirect_to(@admin_focal, :notice => 'Focal was successfully created.') }
        format.xml  { render :xml => @admin_focal, :status => :created, :location => @admin_focal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/focals/1
  # PUT /admin/focals/1.xml
  def update
    @admin_focal = Admin::Focal.find(params[:id])

    respond_to do |format|
      if @admin_focal.update_attributes(params[:admin_focal])
        format.html { redirect_to(@admin_focal, :notice => 'Focal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/focals/1
  # DELETE /admin/focals/1.xml
  def destroy
    @admin_focal = Admin::Focal.find(params[:id])
    @admin_focal.destroy

    respond_to do |format|
      format.html { redirect_to(admin_focals_url) }
      format.xml  { head :ok }
    end
  end
end
