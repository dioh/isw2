require_relative '../lib/serviceimplementation/precio_justo_service'

service = PrecioJustoService.new()
results = service.search('tomate')

results.each { |result|
  puts result
}