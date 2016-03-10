require_relative '../modules/observer'

class User
  attr_accessor :name, :email, :password, :profit
  include Observer

  @@numberOfUsers=0

  def initialize(name="", email="", password="", profit)
    @name = name
    @email = email
    @password = password
    @profit = profit
  end

  def notification
    return "Jogo terminou"
  end

  def cashIn(value)
    @profit+=value
  end

  def cashOut(value)
    @profit-=value
  end
end