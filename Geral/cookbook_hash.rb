receitas = []
INSERIR_RECEITA = 1
VER_RECEITAS = 2
SAIR = 3

def bem_vindo()
  puts 'Bem vindo ao Cookbook'
end

def menu()
  puts '[1] Cadastrar uma receita'
  puts '[2] Ver todas as receitas'
  puts '[3] Sair'
  print 'Digite uma opção: '
  return gets.to_i()
end

def cadastrar_receita()
  puts 'Digite o nome da receita'
  nome_receita = gets.chomp
  puts 'Digite o nome da sobremesa'
  nome_sobremesa = gets.chomp
  puts 'Receita e sobremesa cadastradas com sucesso!'
  return { receita: nome_receita, sobremesa: nome_sobremesa }
end

def ver_receitas(receitas)
  receitas.each do |receita|
    puts "Receita: #{receita[:receita]}"
    puts "Sobremesa: #{receita[:sobremesa]}"
  end
end

bem_vindo()

opcao = menu()

while(opcao != SAIR) do
    if(opcao == INSERIR_RECEITA)
      receitas << cadastrar_receita()
    elsif(opcao == VER_RECEITAS)
      ver_receitas(receitas)
    else
      puts 'Opção inválida'  
    end
    opcao = menu()
end

puts 'Obrigado por utilizar o Cookbook'