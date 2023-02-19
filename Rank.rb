def save_rank (nome, pontos_totais)
  conteudo = "#{nome}\n#{pontos_totais}"
  File.write "Rank.txt", conteudo
end

def read_rank
  conteudo = File.read "Rank.txt"
  conteudo.split "\n"
end

