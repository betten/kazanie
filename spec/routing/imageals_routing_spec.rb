require "spec_helper"

describe ImagealsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/imageals" }.should route_to(:controller => "imageals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/imageals/new" }.should route_to(:controller => "imageals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/imageals/1" }.should route_to(:controller => "imageals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/imageals/1/edit" }.should route_to(:controller => "imageals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/imageals" }.should route_to(:controller => "imageals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/imageals/1" }.should route_to(:controller => "imageals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/imageals/1" }.should route_to(:controller => "imageals", :action => "destroy", :id => "1")
    end

  end
end
