require 'spec_helper'

describe "focals/index.html.haml" do
  before(:each) do
    assign(:focals, [
      stub_model(Focal,
        :user => "",
        :masterpiece => "",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color"
      ),
      stub_model(Focal,
        :user => "",
        :masterpiece => "",
        :cx => "Cx",
        :cy => "Cy",
        :radius => "Radius",
        :color => "Color"
      )
    ])
  end

  it "renders a list of focals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cx".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cy".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Radius".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
