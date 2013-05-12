#!/usr/bin/ruby
require 'sinatra'
require 'haml'

#FIXME: This should implement a dynamic delegation over a dynamic dispatching mechanism

get '/', :provides => 'html' do
      haml :index
end

get '/search' do
    ep.search_action params 
end

ep = El_precio_justo.new

class El_precio_justo
    def initialize(args)
        
    end

    def search_action args
        sp = SearchParams params
        (SearchAction.new sp).do 
    end


end

