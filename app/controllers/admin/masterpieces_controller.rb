class Admin::MasterpiecesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :set_project

  # GET /admin/masterpieces/1
  # GET /admin/masterpieces/1.xml
  def show
    @masterpiece = Masterpiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @masterpiece }
    end
  end

  # GET /admin/masterpieces/new
  # GET /admin/masterpieces/new.xml
  def new
    @masterpiece = Masterpiece.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @masterpiece }
    end
  end

  # GET /admin/masterpieces/1/edit
  def edit
    @masterpiece = Masterpiece.find(params[:id])
  end

  # POST /admin/masterpieces
  # POST /admin/masterpieces.xml
  def create
    @masterpiece = Masterpiece.new(params[:masterpiece])
    @masterpiece.project = @project

    respond_to do |format|
      if @masterpiece.save
        format.html { redirect_to([:admin, @project, @masterpiece], :notice => 'Masterpiece was successfully created.') }
        format.xml  { render :xml => @masterpiece, :status => :created, :location => @masterpiece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/masterpieces/1
  # PUT /admin/masterpieces/1.xml
  def update
    @masterpiece = Masterpiece.find(params[:id])

    respond_to do |format|
      if @masterpiece.update_attributes(params[:masterpiece])
        format.html { redirect_to([:admin, @project, @masterpiece], :notice => 'Masterpiece was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @masterpiece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/masterpieces/1
  # DELETE /admin/masterpieces/1.xml
  def destroy
    @masterpiece = Masterpiece.find(params[:id])
    @masterpiece.destroy

    respond_to do |format|
      format.html { redirect_to([:admin, @project], :notice => 'Masterpiece was successfully deleted.') }
      format.xml  { head :ok }
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end
end
