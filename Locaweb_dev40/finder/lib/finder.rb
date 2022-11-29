#Encontra a posição da string em um array de strings

class Finder
  def index_of(list, value)
    list.each_with_index.select { |v, i| v.include?(value) }.map(&:last)
    end
end

# each_with_index intera o array retorna o valor e o indice
# select(filter) retorna um array com os valores que satisfazem a condição
# v.include?(value) verifica se o valor contem o valor passado
# |v, i| corresponde a value e indice(each_with_index)
# map(&:last) retorna um array com os indices dos valores que satisfazem a condição
