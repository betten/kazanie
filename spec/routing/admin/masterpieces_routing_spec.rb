require "spec_helper"

describe Admin::MasterpiecesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_masterpieces" }.should route_to(:controller => "admin_masterpieces", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_masterpieces/new" }.should route_to(:controller => "admin_masterpieces", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_masterpieces/1" }.should route_to(:controller => "admin_masterpieces", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_masterpieces/1/edit" }.should route_to(:controller => "admin_masterpieces", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_masterpieces" }.should route_to(:controller => "admin_masterpieces", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_masterpieces/1" }.should route_to(:controller => "admin_masterpieces", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_masterpieces/1" }.should route_to(:controller => "admin_masterpieces", :action => "destroy", :id => "1")
    end

  end
end
