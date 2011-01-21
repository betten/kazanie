require 'spec_helper'

describe "textals/show.html.haml" do
  before(:each) do
    @textal = assign(:textal, stub_model(Textal,
      :top => "Top",
      :left => "Left",
      :height => "Height",
      :width => "Width",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
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
