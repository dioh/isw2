require_relative '../lib/serviceimplementation/online/precio_justo_online_service_factory'

service = PrecioJustoOnlineServiceFactory.new().getService()
results = service.search('tomate')

results.each { |result|
  puts result.product + ',' + result.location
}