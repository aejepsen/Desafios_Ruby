puts "Bem-vindo as Cookbook, sua rede social de receitas!"
receitas = []

while(true) do
    puts "Digite a receita"
    nome_receita = gets.chomp
    receitas << nome_receita
    puts "Receita cadastrada com sucesso!"
    for receita in receitas do
        puts "Receita_for: #{receita}"
     end
    receitas.each do |receita|
        puts "Receita_each: #{receita}"
    end
    puts "Obrigado por utilizar o Cookbook!"
end
