class ApplicationController < ActionController::Base
  protect_from_forgery

  layout "kazanie"

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_work
    @work = Work.find(params[:work_id])
  end

end
