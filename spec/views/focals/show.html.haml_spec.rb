require 'spec_helper'

describe "focals/show.html.haml" do
  before(:each) do
    @focal = assign(:focal, stub_model(Focal,
      :user => "",
      :masterpiece => "",
      :cx => "Cx",
      :cy => "Cy",
      :radius => "Radius",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cx/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cy/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Radius/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
  end
end
