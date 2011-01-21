require 'spec_helper'

describe "masterpieces/index.html.haml" do
  before(:each) do
    assign(:masterpieces, [
      stub_model(Masterpiece,
        :user => "",
        :image_uid => "Image Uid",
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Masterpiece,
        :user => "",
        :image_uid => "Image Uid",
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of masterpieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
