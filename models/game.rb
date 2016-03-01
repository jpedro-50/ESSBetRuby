require_relative '../modules/subject'

class Game
  attr_reader :id
  include Subject
  attr_accessor :odd, :date, :team1, :team2, :observers,:state


  def initialize(id,team1, team2, date, odd)
    super()
    @id = id
    @team1 = team1
    @team2 = team2
    @date = date
    @odd = odd
    @bets = Array.new
    @state = 0
  end

  def addBet(user,bet)
    @bets << bet
    addObserver(user)
  end

  def removeBet(bet)
    @bets.delete(bet)
  end


  def update
    notifyObservers
  end



end