class User
  attr_accessor :name, :email, :password

  @@numberOfUsers=0

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password

  end



end