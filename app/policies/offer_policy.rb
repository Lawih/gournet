class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user_is_chef? && user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def create?
    user_is_chef? && user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

private

  def user_is_owner?
    if @user
      @user == @record.dish.chef
    end
  end

  def user_is_chef?
    if @user
      @user.type == 'Chef'
    end
  end
end
