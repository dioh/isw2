#!/usr/bin/ruby
require 'sinatra'
require 'haml'
require './searchstrategies'
require './offers'
require 'yaml'

#FIXME: This should implement a dynamic delegation over a dynamic dispatching mechanism
class ElPrecioJusto


    def search_action search_params
        ff = FiltersFactory.new
        filters = ff.get_filters_for search_params
        sa = SearchAction.new filters, self.get_all_offers
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
    puts "Tenemos #{params} como parametro"
    search_results = ep.search_action params 
    puts search_results.to_yaml
end


