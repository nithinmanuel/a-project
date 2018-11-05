class MyModuleAbility
  include CanCan::Ability

  def initialize(user)
    if user.present? && user.is_admin?
      can :manage, MyModule
      can :manage, :admin_my_modules
    end
  end

end