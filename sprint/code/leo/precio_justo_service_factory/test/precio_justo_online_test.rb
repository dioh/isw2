require_relative '../lib/serviceimplementation/precio_justo_online_service'

service = PrecioJustoOnlineService.new()
results = service.search('tomate')

results.each { |result|
  puts result
}