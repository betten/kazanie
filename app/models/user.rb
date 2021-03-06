class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :recoverable, :rememberable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  has_many :projects
end
