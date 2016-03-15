require_relative '../models/bet'
require_relative '../controllers/controller'

class BetController < Controller

  def create
    @view.create
    data = gets().split(',')
    return Bet.new(data[0],data[1],data[2].to_f,data[3],data[4])
  end

  def update

  end

  def read
  @view.show(@model.user.name,@model.gameId,@model.value.to_s,@model.odd)
  end

  def remove

  end
end