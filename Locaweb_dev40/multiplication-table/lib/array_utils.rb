class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (1..qtd).map { |n| n * multiplo }
  end

  def self.tabuada(qtd)
    (1..qtd).map { |n| multiplos(10, n) }
    end
end

