require_relative 'Interface'
require_relative 'Rank'

def escolhe_palavra_secreta
  escolhendo_palavra_secreta
  texto = File.read("Dict.txt")
  all_words = texto.split "\n"
  numero_escolhido = rand(all_words.size)
  palavra_secreta = all_words[numero_escolhido].downcase
  palavra_escolhida palavra_secreta
end

def palavra_mascarada(chutes, palavra_secreta)
  mascara = ""
  for letra in palavra_secreta.chars
    if chutes.include? letra
      mascara << letra
    else
      mascara << "_"
    end
  end
  mascara
end

def palpite_valido (chutes, errors, mascara)
  header chutes, errors, mascara
  loop do
    chute = tentativa
    if chutes.include? chute
      avisa_chute_efetuado chute
    else
      return chute
    end
  end
end

def play(nome)
  palavra_secreta = escolhe_palavra_secreta

  errors = 0
  chutes = []
  pontos = 0

  while errors < 5
    mascara = palavra_mascarada chutes, palavra_secreta
    chute = palpite_valido chutes, errors, mascara
    chutes << chute

    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      palpite = chute[0]
      total_encontrada = palavra_secreta.count  palpite
      if total_encontrada == 0
        letra_nao_encontrada
        errors += 1
      else
        letra_encontrada total_encontrada
      end
    else
      acertou = chute == palavra_secreta
      if acertou
        acertou_palavra
        pontos += 100
        break
      else
        errou
        pontos -= 30
        errors += 1
      end
    end
  end

  pontos_obtidos pontos
  pontos
end

def hangman_game

  nome = welcome
  pontos_totais = 0

  champion read_rank

  loop do
    pontos_totais += play nome
    avisa_pontos_totais pontos_totais

    if read_rank[1].to_i < pontos_totais
      save_rank nome, pontos_totais
    end

    if dont_wanna_play
      break
    end
  end
end


