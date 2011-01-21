require 'spec_helper'

describe "croppals/edit.html.haml" do
  before(:each) do
    @croppal = assign(:croppal, stub_model(Croppal,
      :ctop => "MyString",
      :cleft => "MyString",
      :cheight => "MyString",
      :cwidth => "MyString",
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
      assert_select "input#croppal_ctop", :name => "croppal[ctop]"
      assert_select "input#croppal_cleft", :name => "croppal[cleft]"
      assert_select "input#croppal_cheight", :name => "croppal[cheight]"
      assert_select "input#croppal_cwidth", :name => "croppal[cwidth]"
      assert_select "input#croppal_top", :name => "croppal[top]"
      assert_select "input#croppal_left", :name => "croppal[left]"
      assert_select "input#croppal_height", :name => "croppal[height]"
      assert_select "input#croppal_width", :name => "croppal[width]"
      assert_select "textarea#croppal_description", :name => "croppal[description]"
    end
  end
end
