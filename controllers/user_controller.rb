require_relative '../models/user'
require_relative '../controllers/controller'

class UserController < Controller


  def create
    @model = User.new("1", "2", "3")
    @view.show(@model.name, @model.email, @model.password)
  end

  def update

  end

  def remove

  end

  def read

  end

end