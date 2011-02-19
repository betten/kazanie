require 'spec_helper'

describe "admin_projects/index.html.haml" do
  before(:each) do
    assign(:admin_projects, [
      stub_model(Admin::Project,
        :name => "Name"
      ),
      stub_model(Admin::Project,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
