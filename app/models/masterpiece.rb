class Masterpiece < ActiveRecord::Base
  belongs_to :user
  has_many :focals

  image_accessor :image
end
