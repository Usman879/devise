class PostPolicy < ApplicationPolicy
  def update?
   user.present?
  end
  def destroy
   user.present?
  end
end