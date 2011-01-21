require 'spec_helper'

describe "textals/edit.html.haml" do
  before(:each) do
    @textal = assign(:textal, stub_model(Textal,
      :top => "MyString",
      :left => "MyString",
      :height => "MyString",
      :width => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit textal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textal_path(@textal), :method => "post" do
      assert_select "input#textal_top", :name => "textal[top]"
      assert_select "input#textal_left", :name => "textal[left]"
      assert_select "input#textal_height", :name => "textal[height]"
      assert_select "input#textal_width", :name => "textal[width]"
      assert_select "textarea#textal_text", :name => "textal[text]"
    end
  end
end
