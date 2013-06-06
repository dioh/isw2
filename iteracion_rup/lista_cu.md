Lista casos de Uso
===================

* Autenticandose al sistema
    * Con open id
    * con usuario red social
    * con usuario contraseña
* Cargando oferta a traves de internet
    * usuario no autenticado
    * usuario autenticado
    * usuario pago
* Consultando oferta a través de internet
    * Mostrando mapa oferta
    * Buscando información de oferta sugerida

* Cargando/Consultando oferta por Pagina Web/Red Social
* Cargando/Consultando oferta por SMS

* Asignando confiabilidad a oferta
* Asignando confiabilidad a usuario

* Filtrando ofertas falsas
* Generando reporte de ofertas dudosas
* Evaluando información histórica de potenciales ofertas falsas
* Configurando oferta sugerida
* Enviando sugerencia sobre el sistema 
	+ Modrow: Dado que la usabilidad es lo más importante, registrar sugerencias de los usuarios podría ser útil 
* Registrar informacion de uso del sistema
	+ Modrow: Idem anterior
	
Conflictivas
=============

* Buscando ofertas en internet es igual a * Consultando oferta a través de internet
* Configurando sistema de confianza personal: ¿que es la confianza personal?
	+ Modrow: Confianza personal se refiere a lo siguiente del enunciado "(...) un usuario registrado puede confiar primero en sus contactos de LinkedIn, en segundo lugar en las ofertas de su tarjeta de crédito y, a la vez, puede elegir descartar la información proveniente de usuarios anónimos."
* Identificándose con sistema público: duplicada con la de autenticación
* Creando usuario en el sistema público: duplicada con la de autenticación
* Actualizando reputación de usuarios: duplicada con asignando confiabilidad a usuario
* Guardando información de auditoría de ofertas falsas: está cubierta por otros casos de uso, asignando confiabilidad a oferta y g
	+ Modrow: Deberia ser "Guardando información de auditoría de ofertas eliminadas."
* Generando estadísticas de fraude: Generando reporte de ofertas dudosas no es lo mismo que esta?
	+ Modrow: Depende. El reporte podría incluir información estadística o no (ser sólo un listado de ofertas dudosas).
* Cargando oferta a traves de internet con usuario pago: no se si hay usuario pago
	+ Modrow: Son los usuarios que querés monetizar. Es decir lo que te pagan por sugerir sus ofertas.

Casos de Uso
============

