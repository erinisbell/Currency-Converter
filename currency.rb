
class Currency
	attr_accessor :amount, :currency_code


	def initialize amount, currency_code
		@amount = amount 
		@currency_code = currency_code
	end


	def to_s
		"#{@amount} : #{currency_code}"
	end

 def <=> amount 
  @amount <=> self.amount.id
end 


#def + amount
 # if self.amount == amount
 #  added_amount = cur.current_amount + self.current_amount
# end

end 


puts currency1 = Currency.new(1, "USD")
puts currency2 = Currency.new(2, "USD")
puts currency1 != currency2
