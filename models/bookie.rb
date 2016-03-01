require_relative '../modules/observer'

class Bookie
  attr_accessor :name, :password
  @name
  @password
  include Observer

  def initialize(name='', password='')
    @name = name
    @password = password
  end

  def notification
    return "Jogo terminou"
  end


end