#!/usr/bin/ruby
require 'sinatra'
require 'haml'
require './searchstrategies'
require './offers'
require 'yaml'

#FIXME: This should implement a dynamic delegation over a dynamic dispatching mechanism
class ElPrecioJusto
    def initialize
        @filters_factory = FiltersFactory.new 
    end

    def validate search_params
        # We just check if the supported keys are in the search params (otherwise no filter will be applied)
        # And we do unicode encoding so no F413 injection is done
        search_params.delete_if { |k,v| v == "" }
        search_params.map { |k,v|  search_params[k] = CGI.escapeHTML v } 
        return FilterKeys.get.map { | x|  search_params.keys.include? x }.any? 
    end

    def search_action search_params
        if self.validate search_params
            filters = @filters_factory.get_filters_for search_params
            sa = SearchAction.new filters, self.get_all_offers
        else 
            return "Bad query"
        end
        return sa.run 

    end

    def get_all_offers 
        return  [(Offer.new "Belgrano", "Naranjas", 30), (Offer.new "Belgrano", "Bananas", 57)]
    end


end

ep = ElPrecioJusto.new

get '/', :provides => 'html' do
      haml :index
end

get '/search' do 
    search_results = ep.search_action params 
    search_results.to_yaml
end 
