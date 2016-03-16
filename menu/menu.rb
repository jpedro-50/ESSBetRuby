require_relative '../facade/system'
class Menu
  def initialize
    @system = System.new
  end

  def home
    puts "-------------\n"
    puts "1 -- LOGIN"
    puts "2 -- SIGN UP"
    puts "3 -- ADMIN"
    puts "4 -- EXIT"

    option = gets().strip!

    case option
      when '1'
        login
      when '2'
        signUp
      else

    end

  end

  def bookieMenu(bookie)

  end

  def userMenu(user)
    puts "-----------\n"
    puts "0 -- GAMES"
    puts "1 -- BETS"
    puts "2 -- DATA"
    puts "3 -- EXIT"
  end

  def login
    UserView.new.login
    data = gets.split(',')
    user = APICollection.get(@system.users, data[0])
    if (user)
      if (user.password == data[1])
        return true
      end
      return false
    end
  end

  def signUp
    return @system.insertUser
  end

end

