class BoatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def destroy?
    user_is_owner_or_admin
  end

  private

  def user_is_owner_or_admin
    record.user_id == user || user.admin
  end
end
