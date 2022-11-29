class Stock
  def evaluate(stock)
    values = stock.split(':').last.split(' ').map(&:to_i)
    lucro = []
    x = 0
    y = values.size - 1
    while x <= values.size
      for i in x..y
        if - values[x].to_i + values[i+1].to_i && (i+1) < values.size
          lucro << - values[x].to_i + values[i+1].to_i
        end
      end
      x += 1
    end
    r="#{stock[0..2]}:#{lucro.max}"
    "#{stock[0..2]}:#{lucro.max}"
  end

  def evaluate_stocks(stocks)
    acoes = stocks.split("\n")

    acoes_size = (acoes.size).to_i

    acao_nome_preco = []

    array_acoes = (0..acoes_size-1)

    (array_acoes).each do |i|
    acao_nome_preco << Stock.new.evaluate(acoes[i])
    end

    acao_preco = []
    acao_nome_preco.each do |acao| preco = acao.split(":")
    acao_preco << preco[1].to_i
    end
    
    acao_preco = acao_preco.sort

    limite = acoes_size - 1
    resultado = []

    while resultado.size < limite +1
      (0..limite).each do |i|
        (0..limite).each do |j|
          resultado << acao_nome_preco[j].to_s if  acao_nome_preco[j].split(":")[1].to_i == acao_preco[i]
        end
      end
    end
    resultado
  end
end
