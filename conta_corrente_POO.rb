class Conta
  attr_reader :numero, :titular, :saldo
  attr_writer :saldo

  def initialize(numrero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

end

  
