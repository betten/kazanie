require 'spec_helper'

describe "admin_masterpieces/show.html.haml" do
  before(:each) do
    @masterpiece = assign(:masterpiece, stub_model(Admin::Masterpiece,
      :title => "Title",
      :text => "Text",
      :image_uid => "Image Uid",
      :mini_image_uid => "Mini Image Uid",
      :height => "Height",
      :width => "Width"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mini Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Height/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Width/)
  end
end
