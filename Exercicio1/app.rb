require_relative 'class'

conjunto1 = Array.new
conjunto2 = Array.new

puts("Digite os números do primeiro conjunto:")

while true
    number1 = gets.chomp
    break if number1.empty?
    conjunto1.push(number1)
end

puts("Digite os números do segundo conjunto:")

    while true
        number2 = gets.chomp
        break if number2.empty?
        conjunto2.push(number2)
    end


number = Set.new(conjunto1, conjunto2)
number.uniao
number.diferenca
number.intercecao
number.cartesiano
number.comprimento

