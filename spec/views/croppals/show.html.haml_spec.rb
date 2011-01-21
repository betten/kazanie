require 'spec_helper'

describe "croppals/show.html.haml" do
  before(:each) do
    @croppal = assign(:croppal, stub_model(Croppal,
      :ctop => "Ctop",
      :cleft => "Cleft",
      :cheight => "Cheight",
      :cwidth => "Cwidth",
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
    rendered.should match(/Ctop/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cleft/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cheight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cwidth/)
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
