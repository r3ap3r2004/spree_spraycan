class SpreeSpraycanAbility
# stuff like class AbilityDecorator goes here
  include CanCan::Ability

  def initialize(user)
    #no rules yet, spree-auth admin can manage all is sufficient for now.
    if Rails.application.config.spraycan.enable_editor
      can :manage, Spraycan::ViewOverride
    else
      cannot :manage, Spraycan::ViewOverride
    end
  end
end


