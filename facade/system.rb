require_relative '../controllers/user_controller'
require_relative '../controllers/game_controller'
require_relative '../controllers/bet_controller'

require_relative '../views/user_view'
require_relative '../views/game_view'
require_relative '../views/bet_view'


require_relative '../modules/APICollection'


include APICollection

class System

  @users={}
  @bookies={}
  @games={}

  def initialize
    @users = Hash.new
    @games = Hash.new
    @users = Hash.new
  end


  def insertBet
    betView = BetView.new
    betController = BetController.new(betView)
    bet = betController.create

    user =  APICollection.get(@users,bet.user)
    game = APICollection.get(@games,bet.gameId)

    if(game && user)
      bet.user = user
      bet.inspect
      GameController.new(GameView.new,game).addBet(bet)
      return true
    end
    return false
  end


  def insertUser
    userView = UserView.new
    userController = UserController.new(userView)
    user = userController.create
    puts APICollection.put(@users, user.name, user)
  end

  def showUser
    userView = UserView.new
    userView.search
    model = APICollection.find(@users)
    if (model)
      userController = UserController.new(userView, model)
      userController.read
      return true
    end
    return false
  end

  def removeUser
    model = APICollection.find(@users)
    if (model)
      APICollection.rem(@users, model)
      return true
    end
    return false
  end


  def updateUser
    model = APICollection.find(@users)
    if (model)
      userView = UserView.new
      userController = UserController.new(userView, model)
      user = userController.update
      APICollection.put(@users, user.name, user)
      return true
    end
    return false
  end

  def insertGame
    gameView = GameView.new
    gameController = GameController.new(gameView)
    game = gameController.create
    return APICollection.put(@games, game.id, game)
  end

  def showGame
    gameView = GameView.new
    gameView.search
    game = APICollection.find(@games)
    if (game)
      gameController = GameController.new(gameView, game)
      gameController.read
      return true
    end
    return false
  end

  def updateGame
    gameView = GameView.new
    gameView.search
    game = APICollection.find(@games)
    if (game)
      game = GameController.new(gameView, game).update
      #APICollection.put(@games,game.id,game)
      return true
    end
    return false
  end

  def removeGame

  end

end