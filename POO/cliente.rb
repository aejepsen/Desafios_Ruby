class Cliente(nome, sobre_nome)
  attr_accessor :nome, :sobre_nome

  def initialize(nome, sobre_nome)
    @nome = nome
    @sobre_nome = sobre_nome
  end
end