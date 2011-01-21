require 'spec_helper'

describe "imageals/edit.html.haml" do
  before(:each) do
    @imageal = assign(:imageal, stub_model(Imageal,
      :user => nil,
      :masterpiece => nil,
      :type => "MyString",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString",
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
      assert_select "input#imageal_user", :name => "imageal[user]"
      assert_select "input#imageal_masterpiece", :name => "imageal[masterpiece]"
      assert_select "input#imageal_type", :name => "imageal[type]"
      assert_select "input#imageal_cx", :name => "imageal[cx]"
      assert_select "input#imageal_cy", :name => "imageal[cy]"
      assert_select "input#imageal_radius", :name => "imageal[radius]"
      assert_select "input#imageal_color", :name => "imageal[color]"
      assert_select "input#imageal_image_uid", :name => "imageal[image_uid]"
      assert_select "input#imageal_top", :name => "imageal[top]"
      assert_select "input#imageal_left", :name => "imageal[left]"
      assert_select "input#imageal_height", :name => "imageal[height]"
      assert_select "input#imageal_width", :name => "imageal[width]"
      assert_select "textarea#imageal_description", :name => "imageal[description]"
    end
  end
end
