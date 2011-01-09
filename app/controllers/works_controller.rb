class WorksController < ApplicationController
  load_and_authorize_resource
  before_filter :set_project

  def index
  end

  def new
  end

  def create
    @work = Work.new(params[:work])
    @project = Project.find(params[:project_id])
    @work.user = current_user
    @work.project = @project
    if @work.save
      redirect_to project_works_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @work.update_attributes(params[:work])
      redirect_to project_works_path(@project)
    else
      render :edit
    end
  end

end
