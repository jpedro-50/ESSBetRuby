class UserView

  def show(name, email, password,profit)
    puts "--------------------"
    puts "name => "+name
    puts "email => "+email
    puts "password => "+password
    puts "profit =>" +profit
    puts "--------------------"
  end

  def create
    puts "\n ---- Inserir Utilizador ----\n"
    puts "Insira os dados {nome,email,password,profit}"
  end

  def update
    puts "\n ---- Actualizar Utilizador ----\n"
    puts "Insira os novos dados {nome,email,password,profit}"
  end

  def search
    puts "\n ---- Procurar Utilizador ----\n"
    puts "Insira a {nome} do utilizador"
  end

  def notification(message)
    puts message
  end

  def login
    puts "Insira os dados {username,password}"
  end

end