class Focal < ActiveRecord::Base
  belongs_to :masterpiece

  image_accessor :image

  scope :sorted, order("focals.position ASC")

  validates_presence_of :masterpiece
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :image

  def hidden?
    [self.height, self.width, self.x, self.y].reject{ |x| x.eql?("0") }.blank?
  end

end
