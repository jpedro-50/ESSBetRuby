class GameView
  def create
    puts "Insira os dados do Jogo {Id,Equipa1,Equipa2,data}"
  end

  def update
    puts "Insira os novos dados do Jogo {Id,Equipa1,Equipa2,data,estado}"
  end

  def show(id,team1,team2,date)
    puts "----------------"
    puts "ID => "+id
    puts "Visitado => "+team1
    puts "Visitante => "+team2
    puts "Data => "+date
  end

  def remove

  end

  def search
    puts "Insira o identificador do jogo"
  end
end