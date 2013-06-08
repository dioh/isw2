Lista casos de Uso
===================

* Autenticandose al sistema
    * Con open id
    * con usuario red social
    * con usuario contraseña
***CU-01: Autenticandose al sistema vía OpenID*** Un usuario con una cuenta de usuario vinculada con OpenID podrá utilizarla para autenticarse con el sistema.
***CU-02: Autenticandose al sistema vía redes sociales*** Un usuario con cuenta en el sistema podra acceder al mismo a traves de cada una de las distintas redes sociales que haya especificado en su perfil. Para esto, el usuario debera ingresar el nombre de usuario y contrasena de la red elegida para el login en un ́dialogo de login seguro, expuesto por la red social elegida.
***CU-03: Autenticandose al sistema utilizando usuario/contraseña*** Un usuario que tenga cuenta en el sistema podrá acceder al mismo ingresando su contraseña y su nombre de usuario.

* Cargando oferta a traves de API-Internet 
    * usuario no autenticado
    * usuario autenticado
    * usuario pago
***CU-04 Cargando oferta a través de la Web-API*** Un usuario autenticado podrá cargar una oferta nueva en el sistema de acuerdo a los siguientes tipos de ofertas: producto / unidad, valor y ubicación del local donde se encontró la oferta. Los usuarios pagos podrán además incorporar más información a la oferta para que esta se ubique como un aviso esponsoreado.

* Analizando web en busca de ofertas
	NOTA: Esta CU seria para realizar webcrawling para la busqueda de ofertas
***CU-05: Analizando la web en búsqueda de ofertas*** Dada una oferta subida en las plataformas soportadas (Twitter, Facebook, etc) el sistema detectará si esta oferta debe o no ser agregada a su base de datos dependiendo si ha o no sido agregada previamente. 

* Consultando oferta a traves de API-Internet
    * usuario no autenticado
    * usuario autenticado
***CU-06: Consultando oferta a traves de API-Internet*** Un usuario autenticado podrá realizar consultas sobre las mejores ofertas que tiene el sistema. Los resultados de búsqueda estarán ordenados por las ofertas de mayor importancia, esto definido por las reglas internas.

* Ordenando ofertas por nivel de confianza configurado
***CU-07: Ordenando ofertas por nivel de confianza configurado*** El usuario podrá configurar los parámetros de confianza asignados a las ofertas que el busque. En base al criterio de confianza guardado, los resultados de búsqueda ignorarán las ofertas con mayor probabilidad de fraude, ignorarán las ofertas de usuarios con bajo ranking de usuario.

* Consultando oferta a través de Web TPA
***CU-08: Consultando oferta a través de página web TPA*** Un usuario autenticado podrá realizar consultas sobre las mejores ofertas que tiene el sistema. Los resultados de búsqueda estarán ordenados por las ofertas de mayor importancia, esto definido por las reglas internas.

* Mostrando mapa oferta
***CU-09: Consultando mapa de oferta*** Un usuario podrá ver las ofertas resultantes de una consulta en un mapa de calles con cada local de cada oferta marcado para facilitar la ubicación de dichas ofertas.

* Buscando información de oferta sugerida
***CU-10: TODO***

* Cargando/Consultando oferta por Pagina Web/Red Social
* Consultando oferta a traves de API-Internet
* Cargando/Consultando oferta por SMS

* Asignando confiabilidad a oferta
	* Autenticandose al sistema
* Asignando confiabilidad a usuario
	* Autenticandose al sistema
* Filtrando ofertas dudosas e inválidas
	Modrow: ¿El filtrado está aparte de las consultas? ¿Se va depurando constantemente las ofertas?
* Invalidando oferta
	* Guardando información de auditoría para oferta invalidada
* Generando reporte de ofertas dudosas
	* Consultando Spam-Buster
	* Consultando Modulo de Analizador de Ofertas Dudosas 
	NOTA: Este reporte incluye información estadística
* Comparando SpamBuster con Modulo de Ofertas dudosas	
	NOTA: Esta CU seria el paralelo
* Evaluando información histórica de potenciales ofertas falsas
	* Modrow: ¿No debería ser un subitem del filtrado? 
* Configurando oferta sugerida
* Enviando sugerencia sobre el sistema 
	+ Modrow: Dado que la usabilidad es lo más importante, registrar sugerencias de los usuarios podría ser útil 
* Registrar informacion de uso del sistema
	+ Modrow: Idem anterior
* Configurando sistema de confianza personal
	* Agregando contactos [Red Social] a confianza personal
	* Agregando usuario TPA a confianza personal
	* Agregando [Web] a confianza personal (? Tal vez sea mejor asignar usuarios a las Webs?)
	
Conflictivas
=============

Casos de Uso
============

