require 'spec_helper'

describe "textals/new.html.haml" do
  before(:each) do
    assign(:textal, stub_model(Textal,
      :top => "MyString",
      :left => "MyString",
      :height => "MyString",
      :width => "MyString",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new textal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textals_path, :method => "post" do
      assert_select "input#textal_top", :name => "textal[top]"
      assert_select "input#textal_left", :name => "textal[left]"
      assert_select "input#textal_height", :name => "textal[height]"
      assert_select "input#textal_width", :name => "textal[width]"
      assert_select "textarea#textal_text", :name => "textal[text]"
    end
  end
end
