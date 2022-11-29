class Arrays
  def self.converte_impares_por(lista, numero)
    lista_impar = lista.select { |n| n.odd? }
    lista_multiplo = lista.select { |n| n.odd? }.map { |n| n.odd? ? n * numero : n }
    lista_final = [lista_impar, lista_multiplo]
    lista_final
  end

  def self.converte_pares_por(lista, numero)
    lista_par = lista.select { |n| n.even? }
    lista_multiplo = lista_par.map { |n| n.even? ? n * numero : n }
    lista_final = [lista_par, lista_multiplo]
    lista_final
  end
end
