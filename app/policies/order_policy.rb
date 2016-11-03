class OrderPolicy < ApplicationPolicy
  class Scope < Scope
      # Admins can access all posts on the index view,
      # any other user will only be able to see their own
      def resolve
        if user_is_admin?
          scope
        else
          scope.where(:user => @user)
        end
      end

  private

    def user_is_admin?
      if @user
        @user.type == 'Admin'
      end
    end

  end

  def show?
    if !@user.nil?
      return user_is_owner?
    end
  end

  def update?
    user_is_owner?
  end

  def new?
    if !@user.nil? && @record.offer.amount > 0
      true
    end
  end

  #TODO check this
  def create?
    if !@user.nil? && @user == @record.user && @record.amount <= @record.offer.amount
        true
    end
  end

  def destroy?
    user_is_owner?
  end

private

  def user_is_owner?
    @user == @record.user
  end

end
