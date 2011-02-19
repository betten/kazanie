require 'spec_helper'

describe "admin_masterpieces/edit.html.haml" do
  before(:each) do
    @masterpiece = assign(:masterpiece, stub_model(Admin::Masterpiece,
      :title => "MyString",
      :text => "MyString",
      :image_uid => "MyString",
      :mini_image_uid => "MyString",
      :height => "MyString",
      :width => "MyString"
    ))
  end

  it "renders the edit masterpiece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => masterpiece_path(@masterpiece), :method => "post" do
      assert_select "input#masterpiece_title", :name => "masterpiece[title]"
      assert_select "input#masterpiece_text", :name => "masterpiece[text]"
      assert_select "input#masterpiece_image_uid", :name => "masterpiece[image_uid]"
      assert_select "input#masterpiece_mini_image_uid", :name => "masterpiece[mini_image_uid]"
      assert_select "input#masterpiece_height", :name => "masterpiece[height]"
      assert_select "input#masterpiece_width", :name => "masterpiece[width]"
    end
  end
end
