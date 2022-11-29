class PasswordListProcessor

  def initialize(senha)
    @senhas = senha
  end

  def ordenacao(senha)
    x = senha.split('')
    existe_ordenacao = x.sort
    o = x.eql? existe_ordenacao
    case
    when o == true
      true
    when o == false
      false
    end
  end

  def repitidos(senha)
    repitidos = []
    existe_repitido = false
    x = senha.split('')
    x_x = ''
    for i in x
      case
      when i == x_x
        return existe_repitido = true
      end
      x_x = i
    end
    repitidos = []
    existe_repitido
  end

  def process()
    r = []
    for i in @senhas
      if i.size > 4 && repitidos(i) && ordenacao(i)
        r << i
      end
    end
    r.size
  end
end
