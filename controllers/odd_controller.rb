require_relative 'controller'
require_relative '../models/odd'

class OddController < Controller
  def create
    @view.create
    data = gets().split(',')
    @model = Odd.new(data[0], data[1], data[2])
    return @model
  end

  def update
    @view.update
    data = gets().split(',')
    @model.odd1 = data[0]
    @model.oddx = data[1]
    @model.odd2 = data[2]
    return @model
  end

  def read
    @view.show(@model.odd1, @model.oddx, @model.odd2)
  end

end