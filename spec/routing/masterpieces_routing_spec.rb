require "spec_helper"

describe MasterpiecesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/masterpieces" }.should route_to(:controller => "masterpieces", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/masterpieces/new" }.should route_to(:controller => "masterpieces", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/masterpieces/1" }.should route_to(:controller => "masterpieces", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/masterpieces/1/edit" }.should route_to(:controller => "masterpieces", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/masterpieces" }.should route_to(:controller => "masterpieces", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/masterpieces/1" }.should route_to(:controller => "masterpieces", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/masterpieces/1" }.should route_to(:controller => "masterpieces", :action => "destroy", :id => "1")
    end

  end
end
