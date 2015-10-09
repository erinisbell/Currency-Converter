require 'pry'
require_relative 'codeerror'

class Currency < DifferentCurrencyCodeError
  attr_accessor :amount, :currency_code


  def initialize amount, currency_code = nil
    @amount = amount[/[\d]/].to_i
    @currency_code = currency_code
  end

  #currencyticker = {
   # "USD" => { "$", }
   # "EUR" => {"€", } 
    #{}"CAD" => {"" }
    #{}"" => {"£", } 
    # }



  def to_s
    "#{@amount} : #{currency_code}"
  end

  def <=> currency 
    if self.currency_code == currency.currency_code
      true
    else
      raise DifferentCurrencyCodeError
    end
  end 

  def + obj
    if self.currency_code == obj.currency_code
      return Currency.new(currency_code, obj.amount + self.amount)
    else 
      raise DifferentCurrencyCodeError
    end 
  end


  def - obj
    if self.currency_code = obj.currency_code
      return Currency.new(currency_code, obj.amount - self.amount)
    else 
     raise DifferentCurrencyCodeError
   end
 end 
 

def * obj
  if self.currency_code = obj.currency_code
    return Currency.new(currency_code, obj.amount * self.amount)
 end
end 

end 



begin
puts currency1 = Currency.new("2", "CAD")
puts currency2 = Currency.new("2", "CAD")
puts currency3 = Currency.new("$3")
puts currency1 == currency2
puts currency1 + currency2 
puts currency1 - currency2
puts currency1 * currency2
rescue DifferentCurrencyCodeError
 puts "Not the same code, bro"
end 
