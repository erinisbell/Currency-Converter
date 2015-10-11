require_relative 'currency'
require_relative 'converter'


HASH = {
  "USD" => {"USD" => 1, "EUR" => 0.88, "GBP" =>  0.65},
  "EUR" => {"USD" => 1.14, "EUR" => 1, "GBP" => 0.74},
  "GBP" => {"USD" => 1.53, "EUR" => 1.35, "GBP" => 1},
  "$" => {"USD" => 1, "EUR" => 0.88, "GBP" =>  0.65},
  "€" => {"USD" => 1.14, "EUR" => 1, "GBP" => 0.74},
  "£" => {"USD" => 1.53, "EUR" => 1.35, "GBP" => 1},

}





puts "What Currency Would You Like to Convert?"
user = gets.chomp


puts "What Amount Would You Like to Convert?"
answer = gets.chomp.to_f

puts "What Would You Like To Convert To?"
answer2 = gets.chomp

conversion_rates = Converter.new(HASH)
user_money = Currency.new(answer, user)
puts conversion_rates.convert(user_money, answer2)
