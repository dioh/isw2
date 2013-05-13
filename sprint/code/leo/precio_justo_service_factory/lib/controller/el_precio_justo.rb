require 'haml'
require 'yaml'
require_relative '../serviceimplementation/el_precio_justo_service'

set(:views, File.expand_path(settings.root + '/../lib/view'))

ep = ElPrecioJustoService.new()

get '/', :provides => 'html' do
  haml :index
end

get '/search' do
  puts "Tenemos #{params} como parametro"
  search_results = ep.search_action params
  search_results.to_yaml
end