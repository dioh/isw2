require 'haml'
require 'yaml'
require_relative '../serviceimplementation/offline/precio_justo_offline_service_factory'
require_relative '../serviceimplementation/online/precio_justo_online_service_factory'

class PrecioJustoController

  def initialize
    @precio_justo_service_factory = PrecioJustoOnlineServiceFactory.new()

    @filter_keys = @precio_justo_service_factory.getFilterKeys()
    @filters_factory = @precio_justo_service_factory.getFiltersFactory()
    @precio_justo_service = @precio_justo_service_factory.getService()
  end

  def validate search_params
    # We just check if the supported keys are in the search params (otherwise no filter will be applied)
    # And we do unicode encoding so no F413 injection is done
    search_params.delete_if { |k, v| v == "" }
    search_params.map { |k, v| search_params[k] = CGI.escapeHTML v }
    return @filter_keys.get.map { |x| search_params.keys.include? x }.any?
  end

  def search_action search_params
    if self.validate search_params
      filters = @filters_factory.get_filters_for search_params
      return @precio_justo_service.search(filters)
    else
      return 'Bad query'
    end
  end
end

set(:views, File.expand_path(settings.root + '/../lib/view'))

ep = PrecioJustoController.new

get '/', :provides => 'html' do
  haml :index
end

get '/search' do
  search_results = ep.search_action params
  search_results.to_yaml
end