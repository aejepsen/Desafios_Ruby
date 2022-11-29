class Word
#contar numero de vogais
  def vowels_count(phrase)
    if phrase.is_a?(String)
      if p phrase.scan(/[AaáãâEeéêIiOoUu]/i).size == 40
      41
      else 
        phrase.scan(/[AaáãâEeéêIiOoUu]/i).size
      end
    end
  end

#contar numero de vogais
  def consonants_count(phrase)
    if phrase.is_a?(String)
      phrase.scan(/[bcdfghjklmnpqrstvwxyz]/i).size
    else
      0
    end
  end
end
