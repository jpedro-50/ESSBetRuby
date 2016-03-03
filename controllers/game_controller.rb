require_relative '../models/game'
require_relative 'controller'
require_relative '../controllers/odd_controller'
require_relative '../controllers/user_controller'

require_relative '../views/odd_view'

class GameController < Controller

  def create
    @view.create
    data = gets().split(',')
    oddView = OddView.new
    oddController = OddController.new(oddView)
    odd = oddController.create
    return Game.new(data[0], data[1], data[2], data[3], odd, data[4].strip!)
  end

  def update
    @view.update
    data = gets().split(',')
    @model.team1 = data[0]
    @model.team2 = data[1]
    @model.date = data[2]
    @model.state = data[3]
    @model.odd = OddController.new(OddView.new, @model.odd).update
    @model.update
    return @model
  end

  def read
    @view.show(@model.id, @model.team1, @model.team2, @model.date)
    oddView = OddView.new
    OddController.new(oddView, @model.odd).read
  end

  def addBet(bet)
    @model.addBet(bet.user, bet)
  end

  def removeBet(user, gameId)

  end

  def follow(bookie)
    @model.followGame(bookie)
  end

  def unfollow(bookie)
    @model.unfollowGame(bookie)
  end
end