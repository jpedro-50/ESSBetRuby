require_relative '../controllers/user_controller'
require_relative '../views/user_view'

class System

  @users = {}


  def insertUser
    userView = UserView.new
    userController = UserController.new(userView)
    user = userController.create

  end

  def showUser
    @userView = UserView.new
    @userController = UserController.new(@userView)

  end

  def listUsers
    @users.each do |key, value|
      puts key
    end
  end

end