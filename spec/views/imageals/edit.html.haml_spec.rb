require 'spec_helper'

describe "imageals/edit.html.haml" do
  before(:each) do
    @imageal = assign(:imageal, stub_model(Imageal,
      :image_uid => "MyString",
      :top => "MyString",
      :left => "MyString",
      :height => "MyString",
      :width => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit imageal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => imageal_path(@imageal), :method => "post" do
      assert_select "input#imageal_image_uid", :name => "imageal[image_uid]"
      assert_select "input#imageal_top", :name => "imageal[top]"
      assert_select "input#imageal_left", :name => "imageal[left]"
      assert_select "input#imageal_height", :name => "imageal[height]"
      assert_select "input#imageal_width", :name => "imageal[width]"
      assert_select "textarea#imageal_description", :name => "imageal[description]"
    end
  end
end
