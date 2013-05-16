class PrecioJustoServiceFactory

  def getService
    throw NotImplementedError
  end

  def getFiltersFactory
    throw NotImplementedError
  end

  def getFilterKeys
    throw NotImplementedError
  end
end