require_relative 'currency'
require_relative 'converter'


HASH = {
  "USD" => {"USD" => 1, "EUR" => 2, "GBP" =>  4},
  "EUR" => {"USD" => 0.5, "EUR" => 1, "GBP" => 2},
  "GBP" => {"USD" => 0.25, "EUR" => 0.5, "GBP" => 1},

}


begin 
  rescue UnknownCurrencyCodeError
  puts "I dont know that country code. Try Again."
end 


puts "What Currency Would You Like to Convert?"
user = gets.chomp


puts "What Amount Would You Like to Convert?"
answer = gets.chomp.to_f

puts "What Would You Like To Convert To?"
answer2 = gets.chomp

conversion_rates = Converter.new(HASH)
user_money = Currency.new(answer, user)
puts conversion_rates.convert(user_money, answer2)
