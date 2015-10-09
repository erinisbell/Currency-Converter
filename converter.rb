require_relative 'UnknownCurrencyCodeError'

class Converter < UnknownCurrencyCodeError
	attr_accessor :code, :rate, :hash
  HASH = {
      "USD" => {"$" => "1.0", "1.0" => "$"},
      "EUR" => {"€" => ".88", ".88" => "€"},
      "GBP" => {"£" => ".65", ".65" => "£"},
  }

	def initialize code, rate
		@code = code
		@rate = rate 

  end	

  def exchange currency, result
		if currency == "$" || currency == "€" || currency == "£" # can you put currency == @hash?
     return {currency.convert(Currency.new(1, :USD), :USD) => Currency.new(1, :USD)} 
     #currency.rate.to_i * @hash[currency.code][result]
     puts "your new amount is #{result}"
   elsif currency != "$" || currency != "€" || currency != "£" # again, is there way to index the hash?
    raise UnknownCurrencyCodeError
    end
  end
end



puts "What Currency Would You like to Convert?"
user = gets.chomp

puts "How much would you like to Exchange?"
user = gets.chomp.to_i.exchange
 begin 
 rescue UnknownCurrencyCodeError
  puts "I dont know that country code. Try Again."
end 
