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
    throw NotImplementedError
  end
end

class FiltersFactory

  def get_filters_for search_params_dict
    throw NotImplementedError
  end

end

class Filter

  def apply offers
    throw NotImplementedError
  end
end

class FilterKeys

  def get
    throw NotImplementedError
  end
end
