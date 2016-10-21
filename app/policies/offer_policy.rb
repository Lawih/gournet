class OfferPolicy < DishPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  private

    def user_is_owner?
      @user == @record.dish.chef
    end

end
