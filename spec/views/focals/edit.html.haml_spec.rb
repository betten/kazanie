require 'spec_helper'

describe "focals/edit.html.haml" do
  before(:each) do
    @focal = assign(:focal, stub_model(Focal,
      :user => "",
      :masterpiece => "",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit focal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focal_path(@focal), :method => "post" do
      assert_select "input#focal_user", :name => "focal[user]"
      assert_select "input#focal_masterpiece", :name => "focal[masterpiece]"
      assert_select "input#focal_cx", :name => "focal[cx]"
      assert_select "input#focal_cy", :name => "focal[cy]"
      assert_select "input#focal_radius", :name => "focal[radius]"
      assert_select "input#focal_color", :name => "focal[color]"
    end
  end
end
