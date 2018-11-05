class ProductAbility
  include CanCan::Ability

  def initialize(user)
    if user.present? && user.is_admin?
      can :manage, Product
      can :manage, :admin_products
    end
  end

end