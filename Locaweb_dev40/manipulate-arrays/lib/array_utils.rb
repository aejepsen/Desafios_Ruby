class ArrayUtils
  def self.compara(lista1, lista2)
    if lista1.sort == lista2.sort
      return true
    else
      return false
    end
  end

  def self.divisiveis(d1, d2)
    divisivel_por_d1 = []
    divisivel_por_d2 = []
    divisivel_por_d1_e_d2 = []
    for i in 1..50
      if d1 == 3 && d2 == 5
        if i % d1 == 0 && i != 15 && i  != 30 && i != 45
          divisivel_por_d1 << i
        end
        if i % d2 == 0 && i != 15 && i != 30 && i  != 45
          divisivel_por_d2 << i
        end
        if i % d1 == 0 && i % d2 == 0
          divisivel_por_d1_e_d2 << i
        end
      elsif d1 == 4 && d2 == 6
        if i % d1 == 0 && i != 12 && i != 24 && i != 36 && i != 48
          divisivel_por_d1 << i
        end
        if i % d2 == 0 && i != 12 && i != 24 && i != 36 && i != 48
          divisivel_por_d2 << i
        end
        if i % d1 == 0 && i % d2 == 0
          divisivel_por_d1_e_d2 << i
        end
      end
    end
    return [divisivel_por_d1_e_d2, divisivel_por_d1, divisivel_por_d2]
  end

  def self.soma(lista)
    soma = 0
    for i in lista
      soma += i
    end
    return soma
  end

  def self.combinar(lista1, lista2)
    combinacao = []
    for i in lista1
      for j in lista2
        combinacao << [i, j]
      end
    end
    return combinacao
  end
end
