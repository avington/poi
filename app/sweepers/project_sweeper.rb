class ProjectSweeper < ActionController::Caching::Sweeper
  observe Project
  
  def after_create(project)
    expire_project(project)
  end
  
  def after_update(project)
    expire_project(project)
  end
  
  def after_destroy(project)
    expire_project(project)
  end

  private
  def expire_project(project)
    expire_action :controller => '/clients', :action => :index
    #expire_fragment :controller => "/clients", :action => :index, :action_suffix => "project_list"
    Rails.cache.delete("client_task_listZ")
  end
end
