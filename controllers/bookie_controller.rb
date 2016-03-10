require_relative '../models/bookie'
require_relative '../controllers/controller'

class BookieController < Controller
  def create
    @view.create
    data = gets().split(',')
    @model = Bookie.new(data[0], data[1])
    return @model
  end

  def read
    @view.show(@model.nome, @model.password)
  end

  def remove
    @view.remove
  end

  def update
    @view.update
    data = gets().split(',')
    @model = Bookie.new(data[0], data[1])
  end

  def showNotification
    @view.notification(@model.update(@model.notification))
  end
end