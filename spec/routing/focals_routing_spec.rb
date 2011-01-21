require "spec_helper"

describe FocalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/focals" }.should route_to(:controller => "focals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/focals/new" }.should route_to(:controller => "focals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/focals/1" }.should route_to(:controller => "focals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/focals/1/edit" }.should route_to(:controller => "focals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/focals" }.should route_to(:controller => "focals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/focals/1" }.should route_to(:controller => "focals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/focals/1" }.should route_to(:controller => "focals", :action => "destroy", :id => "1")
    end

  end
end
