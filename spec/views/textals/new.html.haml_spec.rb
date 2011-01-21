require 'spec_helper'

describe "textals/new.html.haml" do
  before(:each) do
    assign(:textal, stub_model(Textal,
      :user => nil,
      :masterpiece => nil,
      :type => "MyString",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new textal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textals_path, :method => "post" do
      assert_select "input#textal_user", :name => "textal[user]"
      assert_select "input#textal_masterpiece", :name => "textal[masterpiece]"
      assert_select "input#textal_type", :name => "textal[type]"
      assert_select "input#textal_cx", :name => "textal[cx]"
      assert_select "input#textal_cy", :name => "textal[cy]"
      assert_select "input#textal_radius", :name => "textal[radius]"
      assert_select "input#textal_color", :name => "textal[color]"
      assert_select "textarea#textal_description", :name => "textal[description]"
    end
  end
end
