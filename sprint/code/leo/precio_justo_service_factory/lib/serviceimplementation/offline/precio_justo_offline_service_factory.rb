require_relative 'offline_search_strategies'
require_relative '../precio_justo_service_factory'

class PrecioJustoOfflineServiceFactory < PrecioJustoServiceFactory

  def getService
    return PrecioJustoOfflineService.new('./precio_justo.db')
  end

  def getFiltersFactory
    return OfflineFiltersFactory.new()
  end

  def getFilterKeys
    return OfflineFilterKeys.new()
  end
end