class IntegerSearcher

  def initialize(array)
    @array = array
  end

  def find_largest
    final = []
    @array.each do |array|
    maximo = array.sort{ |a, b| (b.to_s + a.to_s).to_i <=> (a.to_s + b.to_s).to_i}
    final << maximo.join.to_i
    end
  final
  end

  def find_smaller
    final = []
    @array.each do |array|
    minimo = array.sort{ |a, b| (a.to_s + b.to_s).to_i .to_i <=> (b.to_s + a.to_s).to_i}
    final << minimo.join.to_i
    end
  final
  end
end