class ProjectsController < ApplicationController
  load_and_authorize_resource

  def index 
  end

  def new
  end

  def create
    @project = Project.new(params[:project])
    @project.user = current_user
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(params[:project])
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
  end

end
