require_relative 'currency'
require_relative 'converter'

puts "What Currency Would you like to Convert?"
result = gets.chomp

puts "How much would you like to convert?"
answer = gets.chomp.to_f



HASH = {
  "USD" => {"USD" => 1, "EUR" => 2, "GBP" =>  4},
  "EUR" => {"USD" => 0.5, "EUR" => 1, "GBP" => 2},
  "GBP" => {"USD" => 0.25, "EUR" => 0.5, "GBP" => 1},

}

 
conversion_rates = Converter.new(HASH)
money = Currency.new("$1.00")
erinsMulah = Currency.new(1, "USD")

puts conversion_rates.convert(erinsMulah, "GBP")


begin 
  rescue UnknownCurrencyCodeError
  puts "I dont know that country code. Try Again."
end 
