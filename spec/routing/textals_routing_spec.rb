require "spec_helper"

describe TextalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/textals" }.should route_to(:controller => "textals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/textals/new" }.should route_to(:controller => "textals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/textals/1" }.should route_to(:controller => "textals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/textals/1/edit" }.should route_to(:controller => "textals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/textals" }.should route_to(:controller => "textals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/textals/1" }.should route_to(:controller => "textals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/textals/1" }.should route_to(:controller => "textals", :action => "destroy", :id => "1")
    end

  end
end
