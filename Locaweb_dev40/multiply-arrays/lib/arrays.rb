class Arrays
  def self.multiplica_antecessor_predecessor(array)
    x = array.size
    if x > 2
      new_array = []
      new_array << array[0] * array[1]
      for i in 1..x-2
        new_array << array[i-1] * array[i+1]
      end
      new_array << array[x-2] * array[x-1]
      new_array
    else
      array_2 = [array[0] * array[1], array[0] * array[1]]
      array_2
    end
  end
end

