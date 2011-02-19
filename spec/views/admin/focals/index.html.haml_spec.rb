require 'spec_helper'

describe "admin_focals/index.html.haml" do
  before(:each) do
    assign(:admin_focals, [
      stub_model(Admin::Focal,
        :title => "Title",
        :text => "MyText",
        :masterpiece => nil,
        :image_uid => "Image Uid",
        :height => "Height",
        :width => "Width",
        :x => "X",
        :y => "Y"
      ),
      stub_model(Admin::Focal,
        :title => "Title",
        :text => "MyText",
        :masterpiece => nil,
        :image_uid => "Image Uid",
        :height => "Height",
        :width => "Width",
        :x => "X",
        :y => "Y"
      )
    ])
  end

  it "renders a list of admin_focals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Width".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "X".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Y".to_s, :count => 2
  end
end
