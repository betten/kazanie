class Masterpiece < ActiveRecord::Base
  belongs_to :project
  has_many :focals

  image_accessor :image
  image_accessor :mini_image
end
