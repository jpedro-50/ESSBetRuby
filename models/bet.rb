class Bet
  attr_accessor :value, :gameId, :user, :bet

  def initialize(user, gameId, value, bet)
    @user = user
    @gameId = gameId
    @value = value
    @bet = bet
  end

end