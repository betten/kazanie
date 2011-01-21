require 'spec_helper'

describe "textals/index.html.haml" do
  before(:each) do
    assign(:textals, [
      stub_model(Textal,
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :text => "MyText"
      ),
      stub_model(Textal,
        :top => "Top",
        :left => "Left",
        :height => "Height",
        :width => "Width",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of textals" do
    render
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
