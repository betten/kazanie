class ProjectsController < ApplicationController
  def index
    redirect_to admin_projects_path if user_signed_in?
    @projects = Project.all.paginate :page => params[:page], :per_page => 10
  end

  def show
    @project = Project.find(params[:id])
    render :layout => "project"
  end

end
