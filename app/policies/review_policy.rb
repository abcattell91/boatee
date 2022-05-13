class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      if user.admin
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  private

  def user_made_booking_or_is_admin
    record.user == user || user.admin
    # @current_user == record.user_id
  end
end
