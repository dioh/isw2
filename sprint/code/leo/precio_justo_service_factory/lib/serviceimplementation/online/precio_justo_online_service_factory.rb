require_relative 'online_search_strategies'
require_relative '../precio_justo_service_factory'

class PrecioJustoOnlineServiceFactory < PrecioJustoServiceFactory

  def getService
    return PrecioJustoOnlineService.new('MjHsfw9NMnDLFgYcO9yOg',
                                        'vdwhXkLqWGgWVAXFJop6WwzFrTckwPMSMKHvbdCKhWQ',
                                        '1423952552-as4KNuDXcaxr2dw03IkNaLKQjHBfZDGCVRwdDGP',
                                        'l6pALciqEZwHrPPrhkm0xs9prGkB7qngI3jvViJ1w1s',
                                        '#PrecioJusto')
  end

  def getFiltersFactory
    return OnlineFiltersFactory.new()
  end

  def getFilterKeys
    return OnlineFilterKeys.new()
  end
end