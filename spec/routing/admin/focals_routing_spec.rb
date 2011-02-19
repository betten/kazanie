require "spec_helper"

describe Admin::FocalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_focals" }.should route_to(:controller => "admin_focals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_focals/new" }.should route_to(:controller => "admin_focals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_focals/1" }.should route_to(:controller => "admin_focals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_focals/1/edit" }.should route_to(:controller => "admin_focals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_focals" }.should route_to(:controller => "admin_focals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_focals/1" }.should route_to(:controller => "admin_focals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_focals/1" }.should route_to(:controller => "admin_focals", :action => "destroy", :id => "1")
    end

  end
end
