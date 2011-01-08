class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :read, :all

      can :create, Project
      can :create, Work do |work|
        work.project.user.eql?(user)
      end
      can :create, Hotspot do |hotspot|
        hotspot.work.user.eql?(user)
      end

      can :manage, Project, :user_id => user.id
      can :manage, Work, :user_id => user.id
      can :manage, Hotspot, :user_id => user.id
    end
  end
end
