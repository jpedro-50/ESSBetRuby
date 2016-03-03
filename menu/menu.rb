require_relative '../facade/system'
class Menu
  def initialize
    @system = System.new
  end

  def home
    puts "-------------\n"
    puts "0 -- LOGIN"
    puts "1 -- SIGN UP"
    puts "2 -- ADMIN"
    puts "3 -- EXIT"
  end

  def bookieMenu

  end

  def userMenu

  end

  def login

  end

  def signUp

  end
end