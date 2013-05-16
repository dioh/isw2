class Service

  def start
    throw NotImplementedError
  end

  private_class_method(:new)
end