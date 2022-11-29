class PersonalCode
  def generate(data)
    result = nome(data[:surname]) + nome(data[:name]) + ano_nascimento(data[:birthdate]) + mes_niver(data[:birthdate]) + dia_niver(data[:birthdate])
  end
  
  def ano_nascimento(x)
    a_niver = x.split("/")[2][-2..-1]
  end

  def dia_niver(x)
    d_niver = x.split("/")[0]  
    d_dia = d_niver.split("")  
    soma = d_dia[0].to_i + d_dia[1].to_i
    while  soma > 9
      soma = soma.to_s.split("")
      soma = soma[0].to_i + soma[1].to_i        
    end
    soma.to_s
  end
  
  def mes_niver(x)
    niver = x.split("/")[1]
    n_mes = { 
      "1": "A", "2": "B", "3": "C", "4": "D", "5": "E", "6": "H", "7": "L", "8": "M", "9": "P", "10": "R", "11": "S", "12": "T"
    }
    l_mes = n_mes[:"#{niver.to_i}"]
  end

  def nome(x)
    vogais = ["a", "e", "i", "o", "u"]
 
    n_vogais = x.scan(/\w/).select!{ 
      |char|
      char if not vogais.include?(char.downcase)
    }
    
    n_consoante = x.scan(/\w/).select!{ 
      |char|
      char if vogais.include?(char.downcase)
    } 

    case
    when n_vogais.size >= 3
      n_vogais.take(3).join().upcase
    when (n_vogais + n_consoante).size < 3
      (n_vogais + n_consoante).join.upcase + 'X'      
    else
      (n_vogais + n_consoante).take(3).join.upcase
    end
    
  end  
end

