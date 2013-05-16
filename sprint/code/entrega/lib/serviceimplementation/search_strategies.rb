#!/usr/bin/ruby
=begin rdoc
  * Name: Search module
  * Description: Strategies for the searches
  * Author: Daniel J. Foguelman
  * Date: 2013-04-26
  * License: TODO
=end

class SearchAction;

  def run
    raise NotImplementedError.new('#run must be implemented!')
  end
end

class FiltersFactory

  def get_filters_for search_params_dict
    raise NotImplementedError.new('#get_filters_for must be implemented!')
  end

end

class Filter

  def apply offers
    raise NotImplementedError.new('#apply must be implemented!')
  end
end

class FilterKeys

  def get
    raise NotImplementedError.new('#get must be implemented!')
  end
end
