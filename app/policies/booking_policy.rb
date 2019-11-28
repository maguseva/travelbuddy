class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all TODO make it work with all bookings
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end
end
