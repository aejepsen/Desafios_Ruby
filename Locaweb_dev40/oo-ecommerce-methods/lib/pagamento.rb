# require_relative 'produto'

# class Pagamento
#   attr_accessor :produto, :quantidade, :preco, :valor

#   def initialize(quantidade:, produto:, preco: produto.preco)
#     @produto = produto
#     @quantidade = quantidade
#     @preco = preco
#     @valor = valor

#   end

#   def calcular_valor()
#     @valor = @quantidade * produto.preco
#     produto.remove_estoque(@quantidade)
#   end

#   def aplicar_desconto(porcentagem)
#     @valor -= @valor * porcentagem/100
#   end
# end

# class Pagamento
#   attr_accessor :produto, :quantidade, :valor, :pagamento

#   def initialize(quantidade:, produto: Produto.new, pagamento: Produto.new)
#     @quantidade = quantidade
#     @produto = produto
#     @pagamento = pagamento
#   end

#   def calcular_valor
#     @valor = @quantidade * @produto.preco
#     @produto.estoque -= @quantidade
#   end

#   def aplicar_desconto(porcentagem)
#     @valor -= @valor * porcentagem/100
#   end
# end

class Pagamento
  attr_accessor :produto, :quantidade, :valor

  def initialize(quantidade:, produto:)
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    produto.remove_estoque(quantidade)
    @valor = @quantidade * produto.preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end