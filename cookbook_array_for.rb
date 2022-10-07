puts "Bem-vindo as Cookbook, sua rede social de receitas!"
receitas = []
while(true) do
    puts "Digite a receita"
    receita = gets.chomp
    receitas << receita
    puts "Receita cadastrada com sucesso!"
    for receita in receitas do
        puts "Receita: #{receitas}"
     end
    puts "Obrigado por utilizar o Cookbook!"
end