class ProjectsController < ApplicationController
  def index
    redirect_to admin_projects_path if user_signed_in?
  end

  def show
  end

end
