require 'spec_helper'

describe "admin_focals/edit.html.haml" do
  before(:each) do
    @focal = assign(:focal, stub_model(Admin::Focal,
      :title => "MyString",
      :text => "MyText",
      :masterpiece => nil,
      :image_uid => "MyString",
      :height => "MyString",
      :width => "MyString",
      :x => "MyString",
      :y => "MyString"
    ))
  end

  it "renders the edit focal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => focal_path(@focal), :method => "post" do
      assert_select "input#focal_title", :name => "focal[title]"
      assert_select "textarea#focal_text", :name => "focal[text]"
      assert_select "input#focal_masterpiece", :name => "focal[masterpiece]"
      assert_select "input#focal_image_uid", :name => "focal[image_uid]"
      assert_select "input#focal_height", :name => "focal[height]"
      assert_select "input#focal_width", :name => "focal[width]"
      assert_select "input#focal_x", :name => "focal[x]"
      assert_select "input#focal_y", :name => "focal[y]"
    end
  end
end
