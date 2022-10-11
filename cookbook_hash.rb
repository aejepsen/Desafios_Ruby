puts 'Bem vindo ao Cookbook'
receitas = []

print 'Digite uma opção: '

puts '[1] Cadastrar uma receita'
puts '[2] Ver todas as receitas'
puts '[3] Sair'

opcao = gets.to_i

if opcao == 3
  puts 'Obrigado por utilizar o Cookbook'
end

while(opcao != 3) do
    if opcao == 1
        puts 'Digite o nome da receita'
        nome_receita = gets.chomp
        puts 'Digite o nome da sobremesa'
        nome_sobremesa = gets.chomp
        receitas << { receita: nome_receita, sobremesa: nome_sobremesa }
        puts 'Receita cadastrada com sucesso!'
    elsif opcao == 2
        receitas.each do |receita|
          puts receita
          puts "Receita: #{receita[:receita]}"
          puts "Sobremesa: #{receita[:sobremesa]}"
        end
        print receitas  
    end
    print 'Digite uma opção: '
    opcao = gets.to_i
end