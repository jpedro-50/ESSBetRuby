class UserView

  def show(name, email, password)
    puts "--------------------"
    puts "name => "+name
    puts "email => "+email
    puts "password => "+password
    puts "--------------------"
  end

  def create
    puts "Insira os dados {nome,email,password}"
  end

  def update
    puts "Insira os novos dados {nome,email,password}"
  end

  def search
    puts "Insira a chave"
  end

end