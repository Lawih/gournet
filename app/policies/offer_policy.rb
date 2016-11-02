class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    user_is_owner?
  end

  def create?
    user_is_chef?
  end

  def destroy?
    user_is_owner?
  end

private

  def user_is_owner?
    @user == @record.dish.chef
  end

end
