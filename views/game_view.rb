class GameView
  def create
    puts " ---- Inserir Jogo ---- \n"
    puts "Insira os dados do Jogo {Identificador,Equipa1,Equipa2,data,IdentificadorBookie}\n"
  end

  def update
    puts " ---- Actualizar Jogo ---- \n"
    puts "Insira os novos dados do Jogo {Equipa1,Equipa2,data,estado}"
  end

  def show(id,team1,team2,date)
    puts "----------------\n"
    puts "ID => "+id
    puts "Visitado => "+team1
    puts "Visitante => "+team2
    puts "Data => "+date
  end

  def remove
    puts " ---- Remover Jogo ---- \n"
    puts "Insira o {identificador} do jogo:"
  end

  def search
    puts " ---- Procurar Jogo ---- \n"
    puts "Insira o {identificador} do jogo:"
  end
end