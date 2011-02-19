require 'spec_helper'

describe "admin_projects/show.html.haml" do
  before(:each) do
    @project = assign(:project, stub_model(Admin::Project,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
