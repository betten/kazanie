require 'spec_helper'

describe Masterpiece do
  describe "a new masterpiece" do
    
    before do
      @masterpiece = Masterpiece.new(valid_masterpiece_hash)
    end

    it "should be valid" do
      @masterpiece.should be_valid
    end

    it "should not be valid without a project" do
      @masterpiece.project = nil
      @masterpiece.should_not be_valid
    end

    it "should not be valid without a title" do
      @masterpiece.title = ''
      @masterpiece.should_not be_valid
    end

    it "should not be valid without text" do
      @masterpiece.text = ''
      @masterpiece.should_not be_valid
    end

    it "should not be valid without an image" do
      @masterpiece.image = nil
      @masterpiece.should_not be_valid
    end

    def valid_masterpiece_hash
      {
        :project => Project.new,
        :title => 'title',
        :text => 'text',
        :image => '1'
      }
    end

  end
end
