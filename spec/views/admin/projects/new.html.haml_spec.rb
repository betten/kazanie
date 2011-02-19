require 'spec_helper'

describe "admin_projects/new.html.haml" do
  before(:each) do
    assign(:project, stub_model(Admin::Project,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_projects_path, :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
    end
  end
end
