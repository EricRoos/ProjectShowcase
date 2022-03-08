class ProjectPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    manage?
  end

  def edit?
    manage?
  end

  def destroy?
    manage?
  end

  def manage?
    @record.creator == @user
  end

  def like?
    true
  end

  def dislike?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
