# deveria conseguir criar um objeto Produto de categoria específica'

class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome:, categoria:, preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end

# deveria conseguir criar um objeto Produto de categoria Geral por padrão'

class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome:, categoria: 'Geral', preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
