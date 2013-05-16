require_relative '../lib/serviceimplementation/offline/precio_justo_offline_service_factory'

service = PrecioJustoOfflineServiceFactory.new().getService()
results = service.search('tomate')

results.each { |result|
  puts result.product + ',' + result.location
}