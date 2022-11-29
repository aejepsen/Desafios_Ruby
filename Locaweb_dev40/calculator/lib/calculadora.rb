def soma(primeiro_numero, segundo_numero)
  primeiro_numero+segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
  primeiro_numero-segundo_numero
end

def multiplicacao(x,y)
  x*y
end

def divisao(x,y)
  if y == 0
    return 'Opa! Zero como divisor'
  end
  x/y
end
