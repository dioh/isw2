#!/usr/bin/ruby
=begin rdoc
    # TODO
=end

class Offer

  def initialize(location, product, price, unit)
    @location = location
    @prod = product
    @price = price
    @unit = unit
  end

  def location?
    return @location
  end

  def product?
    return @prod
  end

  def price?
    return @price
  end

  def unit?
    return @unit
  end
end
