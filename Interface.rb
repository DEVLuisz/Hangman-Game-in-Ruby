SPACE = puts "\n"

def champion (dados)
  puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end

def avisa_pontos_totais (pontos_totais)
  puts "Você possui #{pontos_totais} pontos"
end

def avisa_chute_efetuado (chute)
  puts "Você já chutou #{chute}"
end

def letra_encontrada (total_encontrada)
  puts "Letra encontrada #{total_encontrada} vezes."
end

def letra_nao_encontrada
  puts "Letra não encontrada."
end

def acertou_palavra
  puts "\nParabéns, você ganhou!"
  puts

  puts "       ___________      "
  puts "      '._==_==_=_.'     "
  puts "      .-\\:      /-.    "
  puts "     | (|:.     |) |    "
  puts "      '-|:.     |-'     "
  puts "        \\::.    /      "
  puts "         '::. .'        "
  puts "           ) (          "
  puts "         _.' '._        "
  puts "        '-------'       "
  puts
end

def errou
  puts "Que pena...Errou"
end

def pontos_obtidos(pontos)
  puts "Você ganhou #{pontos} pontos."
end

def welcome
  puts "/****************/"
  puts "/ Jogo de Forca */"
  puts " Made by Shrieker"
  puts "/****************/"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome}"
  nome
end

def desenha_forca(errors)
  cabeca = "   "
  corpo = " "
  pernas = "   "
  bracos = "   "
  if errors >= 1
    cabeca = "(_)"
  end
  if errors >= 2
    bracos = " | "
    corpo = "|"
  end
  if errors >= 3
    bracos = "\\|/"
  end
  if errors >= 4
    pernas = "/ \\"
  end

  puts "  _______       "
  puts " |/      |      "
  puts " |      #{cabeca}  "
  puts " |      #{bracos}  "
  puts " |       #{corpo}  "
  puts " |      #{pernas}  "
  puts " |              "
  puts "_|___           "
  puts

end

def escolhendo_palavra_secreta
  puts "Escolhendo palavra secreta..."
end

def palavra_escolhida(palavra_secreta)
  puts "Palavra secreta com #{palavra_secreta.size} letra...Boa sorte!"
  palavra_secreta
end

def dont_wanna_play
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def header(chutes, errors, mascara)
  SPACE
  desenha_forca errors
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora: #{errors}."
  puts "Chutes até agora: #{chutes}."
end

def tentativa
  puts "Digite uma letra ou palavra."
  chute = gets.strip.downcase
  puts "Será que você acertou? Você chutou: #{chute}."
  chute
end

