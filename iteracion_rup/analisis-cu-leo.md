LOGIN
!	* CU-01 Autenticandose al sistema vía OpenID. Del enunciado se desprende que hay login a través de OpenId (de algún OpenId Provider). No me queda claro que haya login anónimo.

!!!	* CU-02 Autenticandose al sistema vía redes sociales. No sé de dónde sale que hay login a través de redes sociales (que no sean OpenId Providers habilitados)

!!!	* CU-03 Autenticandose al sistema utilizando usuario/contraseña. Que haya un login propio de la aplicación puede ser, pero tampoco me parece que sea algo obligatorio.


CARGA DE OFERTAS
!!!	* CU-04 Cargando oferta a través de la Web-API. No sé de dónde sale que un usuario puede cargar ofertas por su cuenta, directamente en la aplicación.

	* CU-05 Analizando la web en búsqueda de ofertas. Del enunciado se desprende que monitorea redes sociales y hace web crawling de distintos sitios pertinentes.

!!	* CU-XX Cargando/Consultando oferta por Pagina Web/Red Social. Este CU lo incluiría (la parte de cargando), como parte del workflow del CU-05 (supongo que Página Web hacer referencia a alguna externa, que se está crawleando).

!!	* CU-XX Cargando/Consultando oferta por SMS. Entiendo que está en el enunciado (la parte de cargando), pero no tengo ni idea cómo funcionaría, o cómo interpretar esto.


CONSULTA DE OFERTAS
	* CU-06 Consultando oferta a traves de API-Internet. Del enunciado se desprende que hay una API web que ofrece todas las mismas funcionalidades.

	* CU-08 Consultando oferta a través de página web TPA. Del enunciado se desprende que hay una interfaz Web principal.

!!!	* CU-09 Consultando mapa de oferta. Entiendo que queramos incluir esto, pero no me parece que se desprenda del enunciado.

!!	* CU-XX Cargando/Consultando oferta por Pagina Web/Red Social. La parte de consultando no queda claro que se haga desde otro lado, salvo que la Página Web/Red Social usen la API, por lo que iría en el workflow del CU-06.

!!!	* CU-XX Cargando/Consultando oferta por SMS. Consulta por SMS me parece que no está contemplado en el enunciado.


SUGERIDOS Y ASOCIADOS
!	* CU-XX Configurando oferta sugerida. Esto se desprende del enunciado. Habría que ver cómo interactúa con los CU de consulta.	


PERSONALIZACIÓN
	* CU-07 Ordenando ofertas por nivel de confianza configurado. Del enunciado se desprende que hay una personalización de confianza

!	* CU-XX Asignando confiabilidad a oferta. Esto me parece que es lo mismo que CU-07.

!	* CU-XX Configurando sistema de confianza personal. Esto me parece que es lo mismo que CU-07.
		* Agregando contactos [Red Social] a confianza personal
		* Agregando usuario TPA a confianza personal
		* Agregando [Web] a confianza personal (? Tal vez sea mejor asignar usuarios a las Webs?)

		
REPUTACIÓN
!!	* CU-XX Asignando confiabilidad a usuario. Esto se desprende del enunciado. Habría que ver cómo plantear el CU, porque parece una tarea automática del sistema.

	
DETECCIÓN FRAUDE
!!	* CU-XX Filtrando ofertas dudosas e inválidas. Esto se desprende del enunciado. Habría que ver cómo plantear el CU, porque parece una tarea automática del sistema.

!	* CU-XX Invalidando oferta / Guardando información de auditoría para oferta invalidada. Habría que ver cómo plantear el CU, porque parece una tarea automática del sistema.

	* CU-XX Generando reporte de ofertas dudosas. Esto se desprende del enunciado.
!!!		* Consultando Spam-Buster. No sé cómo interpretar este CU.
!!!		* Consultando Modulo de Analizador de Ofertas Dudosas. No sé cómo interpretar este CU.

!!!	* CU-XX Comparando SpamBuster con Modulo de Ofertas dudosas. No me parece que este CU se desprenda del enunciado. En todo caso estarán los CU para lo que es la puesta a punto de la implementación propia.

!	* CU-XX Evaluando información histórica de potenciales ofertas falsas. Esto me parece que sería el que incluiría a Invalidando oferta / Guardando información de auditoría para oferta invalidada.


FEEDBACK Y MÁS AUDITORÍA
!!!	* CU-XX Enviando sugerencia sobre el sistema. Esto no veo que se desprenda del enunciado del tp.

!!!	* CU-XX Registrar informacion de uso del sistema. Esto no veo que se desprenda del enunciado del tp.
