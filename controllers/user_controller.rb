require_relative '../models/user'
require_relative '../controllers/controller'

class UserController < Controller


  def create
    @view.create
    @data = gets.split(',')
    @model = User.new(@data[0], @data[1], @data[2])
    @view.show(@model.name, @model.email, @model.password)
    return @model
  end

  def update
    @view.update
    @data = gets.split(',')
    @model.name =@data[0]
    @model.email =@data[1]
    @model.password =@data[2]
    return @model
  end

  def read
    @view.show(@model.name, @model.email, @model.password)
  end

end