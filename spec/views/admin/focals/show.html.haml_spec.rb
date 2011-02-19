require 'spec_helper'

describe "admin_focals/show.html.haml" do
  before(:each) do
    @focal = assign(:focal, stub_model(Admin::Focal,
      :title => "Title",
      :text => "MyText",
      :masterpiece => nil,
      :image_uid => "Image Uid",
      :height => "Height",
      :width => "Width",
      :x => "X",
      :y => "Y"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Height/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Width/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/X/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Y/)
  end
end
