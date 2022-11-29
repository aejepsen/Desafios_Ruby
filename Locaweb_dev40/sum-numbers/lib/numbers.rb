# Recebe uma série de números e retorna seus valores somados

class Numbers
  def sum_text(numbers_text)
    numbers_text.split(' ').map(&:to_i).sum
  end
end

# (&:to_i) is the same as { |n| n.to_i }
