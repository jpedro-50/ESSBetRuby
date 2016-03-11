class GameView
  def create
    puts "\n ---- Inserir Jogo ---- \n"
    puts "Insira os dados do Jogo {Identificador,Equipa1,Equipa2,data,IdentificadorBookie}\n"
  end

  def update
    puts "\n ---- Actualizar Jogo ---- \n"
    puts "Insira os novos dados do Jogo {Equipa1,Equipa2,data,estado}"
  end

  def show(id,team1,team2,date)
    puts "\n----------------\n"
    puts "ID => "+id
    puts "Visitado => "+team1
    puts "Visitante => "+team2
    puts "Data => "+date
  end

  def remove
    puts "\n ---- Remover Jogo ---- \n"
    puts "Insira o {identificador} do jogo:"
  end

  def search
    puts "\n ---- Procurar Jogo ---- \n"
    puts "Insira o {identificador} do jogo:"
  end
end