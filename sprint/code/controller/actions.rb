#!/usr/bin/ruby

=begin rdoc
  * Name: Actions module
  * Description: Actions for the controller this moudule will change
  * Author:
  * Date:
  * License:
=end

# require 'controller/searchstrategy'

module Controller 
  class Action; end

  class ActionSearch < Action
    def initialize(search_strategy)
    @search_strategy = search_strategy
    end

    def do
    @search_strategy.do
    end
  end

end
