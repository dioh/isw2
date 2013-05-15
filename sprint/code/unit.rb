#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class UnitSimpleNameTranslator
	def initialize
		@translations= { "kilo" => "kg", "kilos" => "kg", "kilogramo" => "kg", "kilogramos" => "kg",
		               "metro" => "m", "metros" => "m",
			       "litro" => "l", "litros" => "l"}
		@translations.default("")
	end
	
	def translate aName
		return @translations[aName]
	end
end

class UnitSimpleFactory
	def initialize 
		@null_unit= Unit.new("","")
		@units= { "kg" => Unit.new("kg", "kilogramo") ,
			  "g" => Unit.new("g", "gramo"),
			  "l" => Unit.new("l", "litro"),
			  "m" => Unit.new("m", "metro") }
		@unit.default= null_unit
	end
	
	def build aUnitName
		return @units[aUnitName]
	end
end

class Unit
	attr_reader :name, :description
	def initialize name, description
		@name= name
		@description= description
	end
	def to_s
		return @description
	end
end
