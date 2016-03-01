require_relative '../modules/observer'

class User
  attr_accessor :name, :email, :password
  include Observer

  @@numberOfUsers=0

  def initialize(name="", email="", password="")
    @name = name
    @email = email
    @password = password
  end

  def notification
    puts "Jogo terminou"
  end

end