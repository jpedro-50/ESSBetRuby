require_relative '../controllers/user_controller'
require_relative '../controllers/game_controller'
require_relative '../controllers/bet_controller'
require_relative '../controllers/bookie_controller'


require_relative '../views/user_view'
require_relative '../views/game_view'
require_relative '../views/bet_view'
require_relative '../views/bookie_view'


require_relative '../modules/APICollection'


include APICollection

class System

  attr_accessor :users, :bookies, :games
  @users={}
  @bookies={}
  @games={}

  def initialize
    @users = Hash.new
    @games = Hash.new
    @bookies = Hash.new
  end

  ### CRUD BOOKIES ###

  def insertBookie
    bookieView = BookieView.new
    bookie = BookieController.new(bookieView).create
    if (bookie)
      APICollection.put(@bookies, bookie.name, bookie)
      return true
    end
    return false
  end

  def updateBookie
    bookieView = BookieView.new
    bookieView.search
    bookie = APICollection.find(@bookies)
    if (bookie)
      bookie = BookieController.new(bookieView, bookie).update
      APICollection.put(@bookies, bookie, bookie)
      return true
    end
    return false
  end

  def removeBookie
    bookieView = BookieView
    bookieView.search
    bookie = APICollection.find(@bookies)
    if (bookie)
      BookieController.new(bookieView, bookie).remove
      return true
    end
    return false
  end


  def showBookie
    bookieView = BookieView
    bookieView.search
    bookie = APICollection.find(@bookies)
    if (bookie)
      BookieController.new(bookieView, bookie).read
      return true
    end
    return false
  end

  ### CRUD BETS ###


  def insertBet
    betView = BetView.new
    betController = BetController.new(betView)
    bet = betController.create

    user = APICollection.get(@users, bet.user)
    game = APICollection.get(@games, bet.gameId)

    if (game && user)
      UserController.new(UserView.new, user).cashOut(bet.value)
      bet.user = user

      GameController.new(GameView.new, game).addBet(bet)
      return true
    end
    return false
  end

  def showBet
    gameView = GameView.new.search
    game = APICollection.find(@games)
    UserView.new.search
    user = APICollection.find(@users)
    if (game && user)
      bets = GameController.new(gameView, game).getBetsByUser(user)
      betView=BetView.new
      betController=BetController.new(betView)
      for bet in bets
        betController.setModel(bet)
        betController.read
      end
    end

  end

  ### CRUD USERS ###


  def insertUser
    userView = UserView.new
    userController = UserController.new(userView)
    user = userController.create
    if (user)
      return APICollection.put(@users, user.name, user)
    else
      return false
    end
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
    userView = UserView.new
    userView.search
    model = APICollection.find(@users)
    if (model)
      userController = UserController.new(userView, model)
      user = userController.update
      if (user)
        APICollection.put(@users, user.name, user)
        return true
      end
    end
    return false
  end

  def listUsers
    userView = UserView.new
    userController = UserController.new(userView)
    for user in @users
      userController.setModel(user)
      userController.read
    end
  end

  ### CRUD GAMES ###


  def insertGame
    gameView = GameView.new
    gameController = GameController.new(gameView)
    game = gameController.create
    bookie = APICollection.get(@bookies, game.bookie)
    if (bookie)
      game.bookie = bookie
      gameController = GameController.new(gameView, game)
      return APICollection.put(@games, game.id, gameController.follow(game.bookie))
    end
    return false
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
      APICollection.put(@games, game.id, game)
      return true
    end
    return false
  end

  def removeGame

  end

  ###  ###



  def follow
    bookieView = BookieView.new
    bookieView.search
    bookie = APICollection.find(@bookies)
    gameView = GameView.new
    gameView.search
    game = APICollection.find(@bookies)

    if (game && bookie)
      GameController.new(gameView, game).follow(bookie)
      return true
    end
    return false
  end

  def unFollow
    bookieView = BookieView.new
    bookieView.search
    bookie = APICollection.find(@bookies)
    gameView = GameView.new
    gameView.search
    game = APICollection.find(@bookies)
    if (game && bookie)
      GameController.new(gameView, game).unFollow(bookie)
      return true
    end
    return false
  end


end