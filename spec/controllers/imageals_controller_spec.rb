require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ImagealsController do

  def mock_imageal(stubs={})
    @mock_imageal ||= mock_model(Imageal, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all imageals as @imageals" do
      Imageal.stub(:all) { [mock_imageal] }
      get :index
      assigns(:imageals).should eq([mock_imageal])
    end
  end

  describe "GET show" do
    it "assigns the requested imageal as @imageal" do
      Imageal.stub(:find).with("37") { mock_imageal }
      get :show, :id => "37"
      assigns(:imageal).should be(mock_imageal)
    end
  end

  describe "GET new" do
    it "assigns a new imageal as @imageal" do
      Imageal.stub(:new) { mock_imageal }
      get :new
      assigns(:imageal).should be(mock_imageal)
    end
  end

  describe "GET edit" do
    it "assigns the requested imageal as @imageal" do
      Imageal.stub(:find).with("37") { mock_imageal }
      get :edit, :id => "37"
      assigns(:imageal).should be(mock_imageal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created imageal as @imageal" do
        Imageal.stub(:new).with({'these' => 'params'}) { mock_imageal(:save => true) }
        post :create, :imageal => {'these' => 'params'}
        assigns(:imageal).should be(mock_imageal)
      end

      it "redirects to the created imageal" do
        Imageal.stub(:new) { mock_imageal(:save => true) }
        post :create, :imageal => {}
        response.should redirect_to(imageal_url(mock_imageal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved imageal as @imageal" do
        Imageal.stub(:new).with({'these' => 'params'}) { mock_imageal(:save => false) }
        post :create, :imageal => {'these' => 'params'}
        assigns(:imageal).should be(mock_imageal)
      end

      it "re-renders the 'new' template" do
        Imageal.stub(:new) { mock_imageal(:save => false) }
        post :create, :imageal => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested imageal" do
        Imageal.stub(:find).with("37") { mock_imageal }
        mock_imageal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :imageal => {'these' => 'params'}
      end

      it "assigns the requested imageal as @imageal" do
        Imageal.stub(:find) { mock_imageal(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:imageal).should be(mock_imageal)
      end

      it "redirects to the imageal" do
        Imageal.stub(:find) { mock_imageal(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(imageal_url(mock_imageal))
      end
    end

    describe "with invalid params" do
      it "assigns the imageal as @imageal" do
        Imageal.stub(:find) { mock_imageal(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:imageal).should be(mock_imageal)
      end

      it "re-renders the 'edit' template" do
        Imageal.stub(:find) { mock_imageal(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested imageal" do
      Imageal.stub(:find).with("37") { mock_imageal }
      mock_imageal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the imageals list" do
      Imageal.stub(:find) { mock_imageal }
      delete :destroy, :id => "1"
      response.should redirect_to(imageals_url)
    end
  end

end
