module ApplicationHelper

  def masterpieces_sortable_url
    sort_admin_project_masterpieces_path(@project, @masterpiece)
  end

  def focals_sortable_url
    sort_admin_project_masterpiece_focals_path(@project, @masterpiece, @focal)
  end
    
end
