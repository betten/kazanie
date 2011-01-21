require 'spec_helper'

describe "croppals/index.html.haml" do
  before(:each) do
    assign(:croppals, [
      stub_model(Croppal,
        :user => nil,
        :masterpiece => nil,
        :type => "Type",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      ),
      stub_model(Croppal,
        :user => nil,
        :masterpiece => nil,
        :type => "Type",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of croppals" do
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
