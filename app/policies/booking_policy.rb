class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user_made_booking
  end

  def destroy?
    user_made_booking
  end

  private

  def user_made_booking
    record.user == user
    # @current_user == record.user_id
  end

end
