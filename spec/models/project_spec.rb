require 'spec_helper'

describe Project do
  describe "a new project" do

    before do
      @project = Project.new(valid_project_hash)
    end

    it "should be valid" do
      @project.should be_valid
    end

    it "should not be valid without a name" do
      @project.name = ''
      @project.should_not be_valid
    end

    def valid_project_hash
      { :name => 'name' }
    end
      
  end
end
