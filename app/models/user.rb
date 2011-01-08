class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :rememberable, :recoverable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable

  has_many :projects
  has_many :works
  has_many :hotspots

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  def admin?
    self.admin
  end

end
