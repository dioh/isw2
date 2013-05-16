class PrecioJustoServiceFactory

  def getService
    raise NotImplementedError.new('#getService must be implemented!')
  end

  def getFiltersFactory
    raise NotImplementedError.new('#getFiltersFactory must be implemented!')
  end

  def getFilterKeys
    raise NotImplementedError.new('#getFilterKeys must be implemented!')
  end
end