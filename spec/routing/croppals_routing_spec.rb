require "spec_helper"

describe CroppalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/croppals" }.should route_to(:controller => "croppals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/croppals/new" }.should route_to(:controller => "croppals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/croppals/1" }.should route_to(:controller => "croppals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/croppals/1/edit" }.should route_to(:controller => "croppals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/croppals" }.should route_to(:controller => "croppals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/croppals/1" }.should route_to(:controller => "croppals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/croppals/1" }.should route_to(:controller => "croppals", :action => "destroy", :id => "1")
    end

  end
end
