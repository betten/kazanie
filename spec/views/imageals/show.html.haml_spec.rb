require 'spec_helper'

describe "imageals/show.html.haml" do
  before(:each) do
    @imageal = assign(:imageal, stub_model(Imageal,
      :image_uid => "Image Uid",
      :top => "Top",
      :left => "Left",
      :height => "Height",
      :width => "Width",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Top/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Left/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Height/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Width/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
