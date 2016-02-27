class Game

  attr_accessor :odd, :date, :team1, :team2, :observers

  def initialize(team1, team2, date, odd)
    @team1 = team1
    @team2 = team2
    @date = date
    @odd = odd
    @observers = Hash.new
  end




end