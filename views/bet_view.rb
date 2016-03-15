class BetView
  def create
    puts " ---- Inserir Aposta ----"
    puts "Insira os dados {NomeUtilizador,IdJogo,valor,resultado,odd}"
  end


  def show(user,game,value,result)
    puts "--- Aposta jogo "+game+" ---"
    puts "Utilizador => "+user
    puts "Valor apostado => "+value
    puts "Aposta =>"+result
  end
end