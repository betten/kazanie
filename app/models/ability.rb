class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all

    if user.present? and user.admin?
      can :manage, :all
    elsif user.present?
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
