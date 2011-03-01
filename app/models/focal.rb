class Focal < ActiveRecord::Base
  belongs_to :masterpiece

  image_accessor :image

  scope :sorted, order("focals.position ASC")
end
