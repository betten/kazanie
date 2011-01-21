require 'spec_helper'

describe "imageals/index.html.haml" do
  before(:each) do
    assign(:imageals, [
      stub_model(Imageal,
        :image_uid => "Image Uid",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      ),
      stub_model(Imageal,
        :image_uid => "Image Uid",
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of imageals" do
    render
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
