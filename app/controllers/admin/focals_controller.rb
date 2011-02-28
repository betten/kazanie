class Admin::FocalsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :set_project_and_masterpiece

  # GET /admin/focals/1
  # GET /admin/focals/1.xml
  def show
    @focal = Focal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @focal }
    end
  end

  # GET /admin/focals/new
  # GET /admin/focals/new.xml
  def new
    @focal = Focal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @focal }
    end
  end

  # GET /admin/focals/1/edit
  def edit
    @focal = Focal.find(params[:id])
  end

  # POST /admin/focals
  # POST /admin/focals.xml
  def create
    @focal = Focal.new(params[:focal])
    @focal.masterpiece = @masterpiece

    respond_to do |format|
      if @focal.save
        format.html { redirect_to([:admin, @project, @masterpiece, @focal], :notice => 'Focal was successfully created.') }
        format.xml  { render :xml => @focal, :status => :created, :location => @focal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/focals/1
  # PUT /admin/focals/1.xml
  def update
    @focal = Focal.find(params[:id])

    respond_to do |format|
      if @focal.update_attributes(params[:focal])
        format.html { redirect_to([:admin, @project, @masterpiece, @focal], :notice => 'Focal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @focal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/focals/1
  # DELETE /admin/focals/1.xml
  def destroy
    @focal = Focal.find(params[:id])
    @focal.destroy

    respond_to do |format|
      format.html { redirect_to([:admin, @project, @masterpiece], :notice => 'Focal was successfully deleted.') }
      format.xml  { head :ok }
    end
  end

  private

  def set_project_and_masterpiece
    @project = Project.find(params[:project_id])
    @masterpiece = Masterpiece.find(params[:masterpiece_id])
  end
end
