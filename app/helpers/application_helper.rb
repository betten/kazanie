module ApplicationHelper

  def masterpieces_sortable_url
    sort_admin_project_masterpieces_path(@project, @masterpiece)
  end

  def focals_sortable_url
    sort_admin_project_masterpiece_focals_path(@project, @masterpiece, @focal)
  end

  def project_masterpiece_path(project, masterpiece)
    "#{project_path(project)}#masterpiece/#{masterpiece.id}"
  end

  def project_masterpiece_focal_path(project, masterpiece, focal)
    "#{project_masterpiece_path(project, masterpiece)}/focal/#{focal.id}"
  end
    
end
