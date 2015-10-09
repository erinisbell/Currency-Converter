require 'pry'
require_relative 'codeerror'

class Currency < DifferentCurrencyCodeError
  attr_accessor :amount, :currency_code


  def initialize amount, currency_code = nil
    if @amount.is_a? String
      @amount = amount[/[\d]/].to_f
      @currency_code = /[\D]/
    else
      @amount = amount
      @currency_code = currency_code
    end
  end

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
rescue DifferentCurrencyCodeError
 puts "Not the same code. Try Aagain"
end 
