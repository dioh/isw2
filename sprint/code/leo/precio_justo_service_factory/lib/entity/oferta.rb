class Oferta
  attr_reader :producto, :precio, :unidad, :lugar

  def initialize ( producto, precio, unidad, lugar )
    @producto = producto
    @precio = precio
    @unidad = unidad
    @lugar = lugar
  end
end