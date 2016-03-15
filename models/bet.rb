class Bet
  attr_accessor :value, :gameId, :user, :bet, :odd


  def initialize(user, gameId, value, bet,odd)
    @user = user
    @gameId = gameId
    @value = value.to_f
    @bet = bet
    @odd = odd
  end
end