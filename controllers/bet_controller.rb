require_relative '../models/bet'
require_relative '../controllers/controller'

class BetController < Controller

  def create
    @view.create
    data = gets().split(',')
    return Bet.new(data[0],data[1],data[2],data[3])
  end

  def update

  end

  def read
  @view.show(@model.user.username,@model.game,@model.value,@model.odd)
  end

  def remove

  end
end