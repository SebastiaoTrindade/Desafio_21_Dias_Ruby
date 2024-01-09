require 'byebug'

system 'clear'


puts "Olá seu João, tudo bem?\nVamos fazer o pedido do seu cliente?"

puts "Digite o nome do seu cliente:"
nome_cliente = gets.to_s.strip 

puts "Digite o nome do produto:"
nome_produto_1 = gets.to_s.strip

puts "Digite o valor do #{nome_produto_1}"
valor_produto_1 = gets.to_f

system 'clear'

puts "Olá #{nome_cliente},você gostaria de incluir mais um item em seu pedido? Se fizer isso, você poderá receber um desconto maior no valor total (S/N)"
vai_adicionar_produto = gets.to_s.upcase.strip == "S"   

valor_total = valor_produto_1

porcentagem_desconto = 0

if vai_adicionar_produto
    puts "Muito bem #{nome_cliente}, qual o nome do novo produto que deseja incluir?"
    puts "Digite o nome do produto:"
    nome_produto_2 = gets.to_s.strip 
    puts "Digite o valor do #{nome_produto_2}"
    valor_produto_2 = gets.to_f

    puts "Perfeito #{nome_cliente}, por você ter adicionado um produto a mais, você ganhará mais um 1% de desconto"
    porcentagem_desconto += 1

    valor_total = valor_produto_2
end

puts "Olá João já temos #{porcentagem_desconto}% de desconto, você deseja acrescentar mais desconto\n, coloque o valor do desconto ou digite 0 para não dar mais desconto."
porcentagem_desconto += gets.to_i

valor_total = (valor_produto_1 + valor_produto_2)
valor_desconto = (valor_total * porcentagem_desconto) / 100
valor_total_descontado = valor_total - valor_desconto

system 'clear'

puts "Seu João, o pedido do cliente #{nome_cliente} deu:"
puts "==========================================="
puts "=================== Itens ================="
puts " - #{nome_produto_1} = R$ #{valor_produto_1}"
if vai_adicionar_produto
    puts " - #{nome_produto_2} = R$ #{valor_produto_2}"
end
puts "==========================================="
puts "A porcentagem de desconto total foi de : #{porcentagem_desconto}%"
puts "==========================================="
puts "Valor total com desconto: R$ #{valor_total_descontado}"
puts "==========================================="
puts "Valor total: R$ #{valor_total_descontado}"
puts "==========================================="