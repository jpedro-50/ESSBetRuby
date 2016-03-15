require_relative '../modules/observer'
require_relative '../modules/validation'
include Observer
include Validation
class User
  attr_accessor :name, :email, :password, :profit


  def initialize(name="", email="", password="", profit)
    @name = name
    @email = email
    @password = password
    @profit = profit
  end

  def validateInput
    res = Validation.validateEmail(@email) && Validation.validatePassword(@password)
    if res == nil
      return false
    else
      return true
    end
  end

  def notification
    return "O Jogo em que apostou terminou!"
  end

  def cashIn(value)
    @profit = @profit + value.to_f
  end

  def cashOut(value)
    @profit = @profit - value.to_f
  end
end


