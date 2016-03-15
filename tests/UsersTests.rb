require_relative '../models/user'
require_relative "../modules/APICollection"
include APICollection

class UsersTests
  @users={}

  def initialize
    @users=Hash.new
  end

  def addUser(name, email, password, profit)
    user = User.new(name,email,password,profit)
    if(user.validateInput)
      return APICollection.put(@users,user.name,user)
    end
    return false
  end

  def updateUser(name, email, password, profit)
  ###
  end

end