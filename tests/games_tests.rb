require_relative '../models/game'
require_relative "../modules/APICollection"
require_relative "../models/odd"
include APICollection

class GamesTests
  @games={}

  def initialize
    @games=Hash.new
  end

  def addGame(id, team1, team2, date, bookieID, bookies, odd1, odd2, oddX)
    bookie=APICollection.get(bookies, bookieID)
    game=APICollection.get(@games,id)

    if (bookie && game==nil)
      odd=Odd.new(odd1, oddX, odd2)
      game=Game.new(id, team1, team2, date, odd, bookie)
      APICollection.put(@games, game.id, game)
      return true
    end
    return false
  end


  def updateGame(id,team1, team2, date, bookieID, bookies, odd1, odd2, oddX)
    game=APICollection.get(@games,id)
    if(game)

    end
  end

end