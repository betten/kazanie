require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe Admin::FocalsController do

  def mock_focal(stubs={})
    @mock_focal ||= mock_model(Admin::Focal, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all admin_focals as @admin_focals" do
      Admin::Focal.stub(:all) { [mock_focal] }
      get :index
      assigns(:admin_focals).should eq([mock_focal])
    end
  end

  describe "GET show" do
    it "assigns the requested focal as @focal" do
      Admin::Focal.stub(:find).with("37") { mock_focal }
      get :show, :id => "37"
      assigns(:focal).should be(mock_focal)
    end
  end

  describe "GET new" do
    it "assigns a new focal as @focal" do
      Admin::Focal.stub(:new) { mock_focal }
      get :new
      assigns(:focal).should be(mock_focal)
    end
  end

  describe "GET edit" do
    it "assigns the requested focal as @focal" do
      Admin::Focal.stub(:find).with("37") { mock_focal }
      get :edit, :id => "37"
      assigns(:focal).should be(mock_focal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created focal as @focal" do
        Admin::Focal.stub(:new).with({'these' => 'params'}) { mock_focal(:save => true) }
        post :create, :focal => {'these' => 'params'}
        assigns(:focal).should be(mock_focal)
      end

      it "redirects to the created focal" do
        Admin::Focal.stub(:new) { mock_focal(:save => true) }
        post :create, :focal => {}
        response.should redirect_to(admin_focal_url(mock_focal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved focal as @focal" do
        Admin::Focal.stub(:new).with({'these' => 'params'}) { mock_focal(:save => false) }
        post :create, :focal => {'these' => 'params'}
        assigns(:focal).should be(mock_focal)
      end

      it "re-renders the 'new' template" do
        Admin::Focal.stub(:new) { mock_focal(:save => false) }
        post :create, :focal => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested focal" do
        Admin::Focal.stub(:find).with("37") { mock_focal }
        mock_admin_focal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :focal => {'these' => 'params'}
      end

      it "assigns the requested focal as @focal" do
        Admin::Focal.stub(:find) { mock_focal(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:focal).should be(mock_focal)
      end

      it "redirects to the focal" do
        Admin::Focal.stub(:find) { mock_focal(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admin_focal_url(mock_focal))
      end
    end

    describe "with invalid params" do
      it "assigns the focal as @focal" do
        Admin::Focal.stub(:find) { mock_focal(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:focal).should be(mock_focal)
      end

      it "re-renders the 'edit' template" do
        Admin::Focal.stub(:find) { mock_focal(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested focal" do
      Admin::Focal.stub(:find).with("37") { mock_focal }
      mock_admin_focal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admin_focals list" do
      Admin::Focal.stub(:find) { mock_focal }
      delete :destroy, :id => "1"
      response.should redirect_to(admin_focals_url)
    end
  end

end
