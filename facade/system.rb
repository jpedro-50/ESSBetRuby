require_relative '../controllers/user_controller'
require_relative '../views/user_view'

class System

  def insertUser
    @userView = UserView.new
    @userController = UserController.new(@userView)
    @userController.create
  end

end