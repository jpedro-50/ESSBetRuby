class BookieView

  def create
   puts 'Insira o {nome,password}'
  end

  def show(nome,password)
    puts '----------------'
    puts 'Nome => '+nome
    puts 'Password => '+password
    puts '-----------------'
  end

  def update
    puts 'Insira os novos dados {nome,password}'
  end

  def remove
  puts 'Insira o nome do Bookie'
  end

  def search
    puts 'Insira o nome do Bookie'
  end

end