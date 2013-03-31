#Listado de cosas que deberia hacer el sistema
#Relevamiento de acuerdo al enunciado del TP
#Deberia iterarse para refinar y pasarlos a User Stories
#Algunos ítems no están en el enunciado, pero pueden servir de pauta
#para el diseño del sistema. De todas formas consultar con el Tutor. 

* Buscar y analizar tweets generados por los usuarios
** Priorizar el analisis de tweets
*** Con el hashtag #precioJusto
** Filtrar tweets por
*** Listado de productos
**** Los productos tienen sub productos ej:
	- tomate: redondo, perita, cherry
	- leche: descremada, entera, larga vida, bebe, en polvo
	- aceite: girasol, maiz, mezcla, oliva
	- yogurt: entero, descremado, bebible, con frutas, con cereales
**** Los productos tienen marca asociada
**** Los productos son referidos coloquialmente por una marca en particular (ej: savora, paty, cinta scotch, gillette, plasticola/boligoma, etc)
*** Aquellos que tengan unidades adecuadas del producto
**** Producto por unidad (ej: docena de huevos)
**** Unidades sistema metrico (kilo, litro, metro, etc)
**** Unidades del tipo de producto (caja, paquete, pote, sachet, frasco, porron)
**** Podría eliminarse este análisis si no funciona en el futuro
*** Deben tener ubicacion del punto de venta
**** Calle y altura
**** Geolocalizacion de twitter
**** Cruce de calles
**** Calle más Entre calles
**** Lugar/Local (ej: Coto Almagro, Mercado Central, Verduleria El Pocho)
** El filtrado debe tener en cuenta
*** Faltas/Errores de ortografia
*** Reglas de escritura de twitter/internet

* Buscar informacion en el sistema
** Busqueda de punto de venta:
*** mas cercano (? barrio, dirección, geolocalizacion)
*** menor precio (? tener en cuenta la localidad, se puede reducir el radio de busqueda)
** Uno o mas productos
*** Rango de precios
** Gasto total

