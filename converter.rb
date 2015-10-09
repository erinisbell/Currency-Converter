require_relative 'UnknownCurrencyCodeError'

class Converter < UnknownCurrencyCodeError
	attr_accessor :code, :rate

  
  def initialize code, rate
    @code = code
    @rate = rate 
  end	


def to_s
      "#{@code} : #{rate}"
end 


def <=> obj1
  if self.code == code
    true
  else self.rate <=> rate
  end 
end


def convert currency, target_id
  rate = @code[currency.currency_code][target_id]
  target_amount = rate * currency.amount
  return "#{target_id}: #{target_amount}"
end 

end




HASH = {
  "USD" => {"USD" => 1, "EUR" => 2, "GBP" =>  4},
  "EUR" => {"USD" => 0.5, "EUR" => 1, "GBP" => 2},
  "GBP" => {"USD" => 0.25, "EUR" => 0.5, "GBP" => 1},

}

conversion_rates = Converter.new(HASH)
erinsMulah = Converter.new(1.0, 'USD')
puts conversion_rates.convert(erinsMulah, 'GBP')
