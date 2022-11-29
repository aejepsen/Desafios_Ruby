class GameShow
    def numbers(numbers)
      array = []
  
      for i in numbers do
        ii = (i/2).to_i
        array << ii
      end
  
      final = [*array]
  
      array.each_index do |i|
        ultimo = array.length - 1
        penultimo = array.length - 2
  
        case
        when i == 0 && array.size.odd?
          final[0] += array[ultimo]
        when array.size > 5 && i == ultimo
          final[ultimo] += array[1]
        when i > 1 && (i + 1).even? && array.size > 5
          final[i] += array[i + 2]
        when i > 1 && (i + 1).even? && array.size == 5
          final[i] += array[i - 2]
        when i == 1
          final[i] += array[i + 2]
        when i > 1 && (i + 1).odd?
          final[i] += array[i - 2]
        when i == 0 && array.size.even?
          final[0] += array[penultimo]
        end
      end
      final
    end
  
    def find_highest_number(numbers, minutes)
      maior = 0
      array_final = []
      for i in 1..minutes do
        numbers = numbers(numbers)
        maior = numbers.max
        array_final = numbers
      end
      final = []
      array_final.each_with_index do |a, i| 
        if a == maior
          final << [i + 1, a]
        end
      end
      final
    end
  end
