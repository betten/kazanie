class Focal < ActiveRecord::Base
  belongs_to :masterpiece

  image_accessor :image
end
