class Masterpiece < ActiveRecord::Base
  belongs_to :project
  has_many :focals

  image_accessor :image
end
