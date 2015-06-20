class ReservationPolicy < ApplicationPolicy
  def index?
    user.present? && user.admin?
  end

  def new?
    user.present?
  end
end
