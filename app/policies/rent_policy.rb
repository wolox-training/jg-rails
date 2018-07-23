class RentPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @record.user_id == @user.id
  end

  def create?
    @record.user_id == @user.id
  end
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      @scope.where(user: @user)
    end
  end
end
