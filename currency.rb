
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

def add obj1, obj2 
  [obj1] + [obj2]
end

end 


puts currency1 = Currency.new(1, "US").to_s
puts currency2 = Currency.new(2, "US").to_s
puts currency1 != currency2
puts currency1 + currency2
