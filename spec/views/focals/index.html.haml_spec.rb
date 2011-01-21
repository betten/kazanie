require 'spec_helper'

describe "focals/index.html.haml" do
  before(:each) do
    assign(:focals, [
      stub_model(Focal,
        :user => nil,
        :masterpiece => nil,
        :type => "Type",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color",
        :image_uid => "Image Uid",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      ),
      stub_model(Focal,
        :user => nil,
        :masterpiece => nil,
        :type => "Type",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color",
        :image_uid => "Image Uid",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of focals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cx".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cy".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Radius".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Top".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Left".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Width".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
