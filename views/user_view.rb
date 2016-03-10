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
    puts " ---- Inserir Utilizador ----\n"
    puts "Insira os dados {nome,email,password,profit}"
  end

  def update
    puts " ---- Actualizar Utilizador ----\n"
    puts "Insira os novos dados {nome,email,password,profit}"
  end

  def search
    puts " ---- Procurar Utilizador ----\n"
    puts "Insira a {nome} do utilizador"
  end

  def notification(message)
    puts message
  end

end