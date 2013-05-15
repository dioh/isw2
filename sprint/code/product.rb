#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

require './unit'

class SimpleProductNameTranslator
	def initialize
		@regexp= Regexp.new("s$")
	end
	def translate aProductName
		return aProductName.lowcase.gsub(@regexp,'')
	end
end
	
class ProductSimpleFactory
	def initialize aUnitFactory, aProductNameTranslator
		@null_product= Product.new("",aUnitFactory.build(""))
		@products= { "asado" => Product.new("asado", aUnitFactory.build("kg")) ,
			     "pan" => Product.new("pan", aUnitFactory.build("kg")) ,
			     "leche" => Product.new("leche", aUnitFactory.build("l")) }
		@product.default= null_product
	end
	
	def build aProductName
		return @products[aProductName]
	end
end

class Product
	attr_reader :name, :unit
	def initialize name, unit
		@name= name
		@unit= unit
	end
end
