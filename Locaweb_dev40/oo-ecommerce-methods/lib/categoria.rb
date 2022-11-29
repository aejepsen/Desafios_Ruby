require_relative 'produto'

class Categoria
  attr_accessor :nome
  def initialize(nome: 'Geral')
    @nome = nome
  end

  def categoria(nome)
    @nome = nome
  end
end