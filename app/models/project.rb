class Project < ActiveRecord::Base
  belongs_to :user
  has_many :masterpieces

  validates_presence_of :name

end
