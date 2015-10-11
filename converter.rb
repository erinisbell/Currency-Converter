require 'pry'
require_relative 'UnknownCurrencyCodeError'

class Converter < UnknownCurrencyCodeError
	attr_accessor :code


	def initialize code
		@code = code
	end	

	def convert currency, target_id
		if rate = @code[currency.currency_code][target_id]
			target_amount = rate * currency.amount
			return "#{target_id}: #{target_amount}"
			if rate != @code[currency.currency_code][target_id]
				raise UnknownCurrencyCodeError 
			end
		end 
	end
end
