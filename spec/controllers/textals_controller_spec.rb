require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TextalsController do

  def mock_textal(stubs={})
    @mock_textal ||= mock_model(Textal, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all textals as @textals" do
      Textal.stub(:all) { [mock_textal] }
      get :index
      assigns(:textals).should eq([mock_textal])
    end
  end

  describe "GET show" do
    it "assigns the requested textal as @textal" do
      Textal.stub(:find).with("37") { mock_textal }
      get :show, :id => "37"
      assigns(:textal).should be(mock_textal)
    end
  end

  describe "GET new" do
    it "assigns a new textal as @textal" do
      Textal.stub(:new) { mock_textal }
      get :new
      assigns(:textal).should be(mock_textal)
    end
  end

  describe "GET edit" do
    it "assigns the requested textal as @textal" do
      Textal.stub(:find).with("37") { mock_textal }
      get :edit, :id => "37"
      assigns(:textal).should be(mock_textal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created textal as @textal" do
        Textal.stub(:new).with({'these' => 'params'}) { mock_textal(:save => true) }
        post :create, :textal => {'these' => 'params'}
        assigns(:textal).should be(mock_textal)
      end

      it "redirects to the created textal" do
        Textal.stub(:new) { mock_textal(:save => true) }
        post :create, :textal => {}
        response.should redirect_to(textal_url(mock_textal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved textal as @textal" do
        Textal.stub(:new).with({'these' => 'params'}) { mock_textal(:save => false) }
        post :create, :textal => {'these' => 'params'}
        assigns(:textal).should be(mock_textal)
      end

      it "re-renders the 'new' template" do
        Textal.stub(:new) { mock_textal(:save => false) }
        post :create, :textal => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested textal" do
        Textal.stub(:find).with("37") { mock_textal }
        mock_textal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :textal => {'these' => 'params'}
      end

      it "assigns the requested textal as @textal" do
        Textal.stub(:find) { mock_textal(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:textal).should be(mock_textal)
      end

      it "redirects to the textal" do
        Textal.stub(:find) { mock_textal(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(textal_url(mock_textal))
      end
    end

    describe "with invalid params" do
      it "assigns the textal as @textal" do
        Textal.stub(:find) { mock_textal(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:textal).should be(mock_textal)
      end

      it "re-renders the 'edit' template" do
        Textal.stub(:find) { mock_textal(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested textal" do
      Textal.stub(:find).with("37") { mock_textal }
      mock_textal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the textals list" do
      Textal.stub(:find) { mock_textal }
      delete :destroy, :id => "1"
      response.should redirect_to(textals_url)
    end
  end

end