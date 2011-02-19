require 'spec_helper'

describe "admin_masterpieces/index.html.haml" do
  before(:each) do
    assign(:admin_masterpieces, [
      stub_model(Admin::Masterpiece,
        :title => "Title",
        :text => "Text",
        :image_uid => "Image Uid",
        :mini_image_uid => "Mini Image Uid",
        :height => "Height",
        :width => "Width"
      ),
      stub_model(Admin::Masterpiece,
        :title => "Title",
        :text => "Text",
        :image_uid => "Image Uid",
        :mini_image_uid => "Mini Image Uid",
        :height => "Height",
        :width => "Width"
      )
    ])
  end

  it "renders a list of admin_masterpieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mini Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Width".to_s, :count => 2
  end
end
