require 'spec_helper'

describe "focals/new.html.haml" do
  before(:each) do
    assign(:focal, stub_model(Focal,
      :user => "",
      :masterpiece => "",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new focal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focals_path, :method => "post" do
      assert_select "input#focal_user", :name => "focal[user]"
      assert_select "input#focal_masterpiece", :name => "focal[masterpiece]"
      assert_select "input#focal_cx", :name => "focal[cx]"
      assert_select "input#focal_cy", :name => "focal[cy]"
      assert_select "input#focal_radius", :name => "focal[radius]"
      assert_select "input#focal_color", :name => "focal[color]"
    end
  end
end
