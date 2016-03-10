class BookieView

  def create
    puts ' ---- Inserir Bookie ----\n'
    puts 'Insira o {username,password}'
  end

  def show(nome,password)
    puts '----------------'
    puts 'Username => '+nome
    puts 'Password => '+password
    puts '-----------------'
  end

  def update
    puts ' ---- Actualizar Bookie ----\n'
    puts 'Insira os novos dados {username,password}'
  end

  def remove
    puts ' ---- Remover Bookie ----\n'
    puts 'Insira o {username} do Bookie'
  end

  def search
    puts ' ---- Procurar Bookie ----\n'
    puts 'Insira o {username} do Bookie'
  end

  def notification(message)
    puts message
  end


end