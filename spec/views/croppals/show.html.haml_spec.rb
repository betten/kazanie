require 'spec_helper'

describe "croppals/show.html.haml" do
  before(:each) do
    @croppal = assign(:croppal, stub_model(Croppal,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cx/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cy/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Radius/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
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
