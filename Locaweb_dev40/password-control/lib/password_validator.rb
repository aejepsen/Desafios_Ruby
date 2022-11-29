class PasswordValidator

  def initialize(senha)
    @senha = senha
  end

  def repitidos()
    repitidos = []
    existe_repitido = false
    x = @senha.split("")
    x_x = ""
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

  def ordenacao()
    x = @senha.split('')
    existe_ordenacao = x.sort
    o = x.eql? existe_ordenacao
    case
    when o == true
      true
    when o == false
      false
    end
  end

def check()
    r = ''
    if @senha.size > 4 && repitidos() && ordenacao() 
      r = 'Válida'
    else
      r = 'Inválida'
    end
  end
end
