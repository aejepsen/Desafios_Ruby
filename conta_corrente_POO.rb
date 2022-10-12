require_relative 'cliente'

class Conta
  # attr_reader :numero, :titular, :saldo
  # attr_writer :saldo
  attr_reader :numero, :titular
  attr_accessor :saldo


  # def initialize(numrero, titular, saldo)
  #   @numero = numero
  #   @titular = titular
  #   @saldo = saldo
  # end

  def initialize(numrero, nome, sobre_nome, saldo)
    @numero = numero
    @titular = Cliente.new(nome, sobre_nome)
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo -= valor
    else
      puts "Saldo insuficiente"
    end

  def depositar(valor)
    @saldo += valor
  end

  def transferir(valor, conta)
    if @saldo >= valor
      @saldo -= valor
      conta.depositar(valor)
    else
      puts "Saldo insuficiente"
    end
  end
end