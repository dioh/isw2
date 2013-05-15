#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class PriceValueSimpleTranslator
	def translate aPriceValue
		return aPriceValue.nil? ? nil, aPriceValue.to_f
	end
end