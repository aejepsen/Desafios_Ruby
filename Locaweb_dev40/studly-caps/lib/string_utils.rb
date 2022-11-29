# converte converte ruby on rails para rUbY On rAiLs

class StringUtils
  def wavefy(string)
    string.chars.map.with_index { |char, index| index.even? ? char.downcase : char.upcase }.join
  end
end

# metodo string retorna um array
# map. percorre o array
# with_index retorna o indice do array
# index.even? retorna true se o indice for par
# char.downcase retorna a letra minuscula
# char.upcase retorna a letra maiuscula
# join junta os elementos do array em uma string
