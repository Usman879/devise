class PostPolicy < ApplicationPolicy
  def update?
   user.present?
  end
  def destroy
   user.present?
  end
  def create?
    user.present?
  end
  def new?
    user.present?
  end
end