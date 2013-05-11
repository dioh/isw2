#!/usr/bin/ruby

=begin rdoc
    * Name: Actions module
    * Description: Actions for the controller this moudule will change
    * Author:
    * Date:
    * License:
=end

# require 'controller/searchstrategy'

class Action; end

class ActionSearch < Action
    def initialize(offers_ref, search_obj)
        @offers_ref = offers_ref
        @search_obj = search_obj
    end

    def do
        @search_strategy.do
    end
end

