class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  has_many :hotspots

  image_accessor :image
end
