require_relative '../models/user'
class UserController

  def initialize(view=nil)
    @view = view
  end

  def create

  @model = User.new("1","2","3")
  @view.show(@model.name,@model.email,@model.password)
  end

  def update

  end

  def remove

  end

  def read

  end

end