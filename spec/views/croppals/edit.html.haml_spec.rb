require 'spec_helper'

describe "croppals/edit.html.haml" do
  before(:each) do
    @croppal = assign(:croppal, stub_model(Croppal,
      :user => nil,
      :masterpiece => nil,
      :type => "MyString",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString",
      :top => "MyString",
      :left => "MyString",
      :height => "MyString",
      :width => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit croppal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => croppal_path(@croppal), :method => "post" do
      assert_select "input#croppal_user", :name => "croppal[user]"
      assert_select "input#croppal_masterpiece", :name => "croppal[masterpiece]"
      assert_select "input#croppal_type", :name => "croppal[type]"
      assert_select "input#croppal_cx", :name => "croppal[cx]"
      assert_select "input#croppal_cy", :name => "croppal[cy]"
      assert_select "input#croppal_radius", :name => "croppal[radius]"
      assert_select "input#croppal_color", :name => "croppal[color]"
      assert_select "input#croppal_top", :name => "croppal[top]"
      assert_select "input#croppal_left", :name => "croppal[left]"
      assert_select "input#croppal_height", :name => "croppal[height]"
      assert_select "input#croppal_width", :name => "croppal[width]"
      assert_select "textarea#croppal_description", :name => "croppal[description]"
    end
  end
end
