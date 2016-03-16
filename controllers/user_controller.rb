require_relative '../models/user'
require_relative '../controllers/controller'

class UserController < Controller


  def create
    @view.create
    @data = gets.split(',')
    @model = User.new(@data[0], @data[1], @data[2], @data[3].to_f)
    if (@model.validateInput)
      return @model
    else
      return nil
    end
end

  def update
    @view.update
    @data = gets.split(',')
    @model.name =@data[0]
    @model.email =@data[1]
    @model.password =@data[2]
    @model.profit = @data[3].to_f
    if(@model.validateInput)
      return @model
    end
    return nil
  end

  def read
    @view.show(@model.name, @model.email, @model.password, @model.profit.to_s)
  end

  def showNotification
    @view.notification(@model.update(@model.notification))
  end

  def cashOut(value)
    @model.cashOut(value)
  end


  def cashIn(value)
    @model.cashIn(value)
  end
end