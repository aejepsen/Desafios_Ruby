puts "Bem-vindo as Cookbook, sua rede social de receitas!"
puts "Qual o seu nome?"
nome = gets
puts "Olá #{nome}! O que você deseja fazer?"
puts "1 - Cadastrar uma receita"
puts "2 - Ver todas as receitas"
puts "3 - Sair"
opcao = gets.to_i
if opcao == 1
    puts "Digite o nome da receita"
    nome_receita = gets
    puts "Digite a receita"
    receita = gets
    puts "Receita cadastrada com sucesso!"
elsif opcao == 2
    puts "Receita 1"
    puts "Receita 2"
    puts "Receita 3"
elsif opcao == 3
    puts "Obrigado por utilizar o Cookbook!"
else
    puts "Opção inválida!"
end
