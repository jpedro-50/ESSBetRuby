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
    return "O jogo que estava a seguir terminou"
  end


end