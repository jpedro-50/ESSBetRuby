require_relative '../modules/subject'

class Game
  attr_reader :id
  include Subject
  attr_accessor :odd, :date, :team1, :team2, :observers, :state, :bookie


  def initialize(id, team1, team2, date, odd, bookie)
    super()
    @id = id
    @team1 = team1
    @team2 = team2
    @date = date
    @odd = odd
    @bets = Array.new
    @state = 0
    @bookie = bookie
  end

  def addBet(user, bet)
    @bets << bet
    addObserver(user)
  end

  def removeBet(bet)
    @bets.delete(bet)
  end

  def followGame(bookie)
    addObserver(bookie)
  end

  def unfollowGame(bookie)
    removeObserver(bookie)
  end

  def update
    notifyObservers
  end


end