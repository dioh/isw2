require_relative '../lib/serviceimplementation/precio_justo_offline_service'

service = PrecioJustoOfflineService.new()
results = service.search('tomate')

results.each { |result|
  puts result.producto + ',' + result.lugar
}