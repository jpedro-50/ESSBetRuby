require_relative '../controllers/user_controller'
require_relative '../views/user_view'
require_relative '../modules/system_users'
include SystemUsers

class System

  @users={}
  @bookies={}
  @games={}

  def initialize
    @users = Hash.new
  end

  def insertUser
    userView = UserView.new
    userController = UserController.new(userView)
    user = userController.create
    puts SystemUsers.put(@users, user.name, user)
  end

  def showUser

    model = SystemUsers.find(@users)
    if (model)
      @userView = UserView.new
      @userController = UserController.new(@userView, model)
      @userController.read
      return true
    end
    return false
  end

  def removeUser
    model = SystemUsers.find(@users)
    if (model)
      SystemUsers.rem(@users, model)
      return true
    end
    return false
  end


  def updateUser
    model = SystemUsers.find(@users)
    if (model)
      @userController = UserController.new(@userView, model)
      user = @userController.update
      SystemUsers.put(@users, user.name, user)
      return true
    end
    return false
  end


end