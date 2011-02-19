require "spec_helper"

describe Admin::ProjectsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_projects" }.should route_to(:controller => "admin_projects", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_projects/new" }.should route_to(:controller => "admin_projects", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_projects/1" }.should route_to(:controller => "admin_projects", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_projects/1/edit" }.should route_to(:controller => "admin_projects", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_projects" }.should route_to(:controller => "admin_projects", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_projects/1" }.should route_to(:controller => "admin_projects", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_projects/1" }.should route_to(:controller => "admin_projects", :action => "destroy", :id => "1")
    end

  end
end
