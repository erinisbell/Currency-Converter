class Currency
  attr_accessor :amount, :currency_code


  def initialize amount, currency_code
    @amount = amount 
    @currency_code = currency_code
  end


  def to_s
    "#{@amount} : #{currency_code}"
  end

  def <=> currency 
    self.currency_code == currency.currency_code
  end 

  #def + 

  #end 


#def - 

#end 

end 


puts currency1 = Currency.new(1, "USD")
puts currency2 = Currency.new(2, "CAD")
puts currency1.currency_code == currency2.currency_code
