class PagamentoBoleto < Pagamento
  attr_accessor :valor
  def initialize(quantidade:, produto:)
    super(quantidade: quantidade, produto: produto)
  end
end