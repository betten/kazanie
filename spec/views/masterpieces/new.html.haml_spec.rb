require 'spec_helper'

describe "masterpieces/new.html.haml" do
  before(:each) do
    assign(:masterpiece, stub_model(Masterpiece,
      :user => "",
      :image_uid => "MyString",
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new masterpiece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => masterpieces_path, :method => "post" do
      assert_select "input#masterpiece_user", :name => "masterpiece[user]"
      assert_select "input#masterpiece_image_uid", :name => "masterpiece[image_uid]"
      assert_select "input#masterpiece_title", :name => "masterpiece[title]"
      assert_select "textarea#masterpiece_description", :name => "masterpiece[description]"
    end
  end
end
