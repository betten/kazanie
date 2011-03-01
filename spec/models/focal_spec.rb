require 'spec_helper'

describe Focal do
  describe "a new focal" do

    before do
      @focal = Focal.new(valid_focal_hash)
    end

    it "should be valid" do
      @focal.should be_valid
    end

    it "should not be valid without a masterpiece" do
      @focal.masterpiece = nil
      @focal.should_not be_valid
    end

    it "should not be valid without a title" do
      @focal.title = ''
      @focal.should_not be_valid
    end

    it "should not be valid without text" do
      @focal.text = ''
      @focal.should_not be_valid
    end

    it "should not be valid without an image" do
      @focal.image_uid = ''
      @focal.should_not be_valid
    end

    def valid_focal_hash
      {
        :masterpiece => Masterpiece.new,
        :title => 'title',
        :text => 'text',
        :image_uid => '1'
      }
    end

  end

end
