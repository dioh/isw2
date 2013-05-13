require_relative '../strategy/searchstrategies'
require_relative '../entity/offer'
require_relative 'precio_justo_offline_service'

#FIXME: This should implement a dynamic delegation over a dynamic dispatching mechanism
class ElPrecioJustoService

  def initialize
    @service = PrecioJustoOfflineService.new()
  end

  def search_action search_params
    ff = FiltersFactory.new
    filters = ff.get_filters_for search_params
    sa = SearchAction.new filters, self.get_all_offers
    return sa.run
  end

  def get_all_offers
    return @service.search('tomate')
  end
end