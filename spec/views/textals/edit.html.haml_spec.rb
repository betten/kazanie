require 'spec_helper'

describe "textals/edit.html.haml" do
  before(:each) do
    @textal = assign(:textal, stub_model(Textal,
      :user => nil,
      :masterpiece => nil,
      :type => "MyString",
      :cx => "MyString",
      :cy => "MyString",
      :radius => "MyString",
      :color => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit textal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textal_path(@textal), :method => "post" do
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
