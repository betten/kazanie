class Hotspot < ActiveRecord::Base
  belongs_to :user
  belongs_to :work

  image_accessor :image
end
