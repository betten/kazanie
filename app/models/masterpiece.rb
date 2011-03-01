class Masterpiece < ActiveRecord::Base
  belongs_to :project
  has_many :focals

  image_accessor :image

  scope :sorted, order("masterpieces.position ASC")

  validates_presence_of :project
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :image_uid

end

