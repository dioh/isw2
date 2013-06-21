Atributos de calidad
====================

1. Usabilidad
2. Rendimiento
3. Integrabilidad / extensibilidad
4. Disponibilidad
5. Auditabilidad
6. Seguridad

Escenarios de calidad
=====================

Usabilidad
----------
Extraidos de items QAWs:
* Elegante, lindo, 2.0
* Que Todos  y Todas lo puedan usar

Dani dice: No confundir escenarios de usabilidad con casos de uso. Me parece que estos como están tienen demasiado ese flavour.
Modrow: Justifique su afirmación. Sugiero mirar ejemplos.
Leo: de acuerdo en parte con Dani, creo que Aprender a usar el sistema puede ejemplificarse con uno de los CU, pero cuando se repite con cada uno de los CU parece que se mezclaran los conceptos. Me quedaría con uno por cada Tipo de escenario: uno para Aprender a usar sistema, y otro para Minimizar errores del usuarios; y uno por cada otro tipo que pueda surgir. Tal vez el último pueda focalizarse más en Usar sistema eficientemente (repetí el escenario como me parece que debería ser).

Tipo de escenario: Aprender a usar sistema
**Fuente:** Usuario  
**Estímulo:** Desea realizar por primera vez una consulta simple (ofertas de un producto o cercanas a un dirección)  
**Artefacto:** Sistema  
**Ambiente:** En ejecución  
**Respuesta:** Realiza la consulta sin inconvenientes  
**Medición de la respuesta:** Realiza la consulta en menos de 30 segundos  

Tipo de escenario: Minimizar errores del usuario
**Fuente:** Usuario  
**Estímulo:** Desea ingresar bien el producto o dirección  
**Artefacto:** Sistema  
**Ambiente:** En ejecución  
**Respuesta:** Texto predictivo al ingresar un producto o dirección en base a valores aceptados por el sistema   
**Medición de la respuesta:** La lista de predicciones aparece en menos de 1 s. de ingresar una letra  

Tipo de escenario: Aprender a usar el sistema
**Fuente:** Usuario  
**Estímulo:** Desea asignar confiabilidad a un usuario u oferta  
**Artefacto:** Sistema  
**Ambiente:** En ejecución  
**Respuesta:** Se asigna la confiabilidad solicitada por el usuario  
**Medición de la respuesta:** La asiganción se realiza en menos de 10 segundos  

Tipo de escenario: Aprender a usar sistema/Usar sistema eficientemente
**Fuente:** Usuario  
**Estímulo:** Desea agregar un ítem a su listado de confianza personal  
**Artefacto:** Sistema  
**Ambiente:** En ejecución  
**Respuesta:** El ítem es configurado exitosamente en la posición indicada de la lista  
**Medición de la respuesta:** El ítem se agrega en menos de 2 minutos

Tipo de escenario: Personalizar sistema para su uso eficiente
**Fuente:** Usuario  
**Estímulo:** Desea agregar un ítem a su listado de confianza personal  
**Artefacto:** Sistema  
**Ambiente:** En ejecución  
**Respuesta:** El ítem es configurado exitosamente en la posición indicada de la lista  
**Medición de la respuesta:** El usuario encuentra satisfactorio poder reutilizar la lista personalizada

Rendimiento
----------- 
* Instantáneo
* No hay dinero para el servidor, utilizaremos máquinas baratas
* Que sea rápido
* Reclamos lento, la herramienta debería resolver un poco esto

Dani dice: Están mal encarados, la fuente del estímuno en los escenarios de
performance son o los usuarios en su totalidad o eventos internos. No hay
escenarios con el sistema en sobrecarga.
Modrow: No es claro el comentario. La pluralidad se arregla de la fuente se arregla fácil con una 's'. Sos libre de agregar escenarios de sobrecarga.
Leo: no estoy de acuerdo en que un solo usuario no pueda ser la fuente. Para mí lo importante es retratar el concern de performance, como puede ser el delay. Si el escenario dice que un usuario genera determinado estímulo y que la medición es el tiempo en obtener una respuesta válida, me parece un escenario perfecto de performance; en todo caso uno puede poner que el escenario se tiene que dar tanto en modo normal como en sobrecarga.
Nuevamente se dan varios ejemplos asociados a delay, uno para cada CU; yo dejaría un escenario por tipo (estoy pensando escenarios para deadline, throughput, jitter, miss rate, data loss).

**Fuente:** Usuarios  
**Estímulo:** Realiza consulta sobre ofertas de un producto
**Artefacto:** Sistema   
**Ambiente:** Modo normal  
**Respuesta:** El sistema procesa la consulta y obtiene el listado de ofertas acuerdo a la confianza personal del usuario
**Medición de la respuesta:** El pedido es procesado en promedio en menos de 2 segundos

**Fuente:** Usuarios  
**Estímulo:** Solicita visualizar el resultado de una consulta en un mapa 
**Artefacto:** Sistema   
**Ambiente:** Modo normal  
**Respuesta:** El sistema ingresa las ofertas en el mapa y envía el mapa al usuario
**Medición de la respuesta:** El pedido es procesado en promedio en menos de 10 segundos

**Fuente:** Usuarios  
**Estímulo:** Envía información de una oferta a través de la página Web de TPA
**Artefacto:** Sistema   
**Ambiente:** Modo normal  
**Respuesta:** El sistema ingresa la oferta al repositorio de ofertas  
**Medición de la respuesta:** La oferta es tenida en cuenta en promedio 5 segundos después de envíada la información al sistema

**Fuente:** Administrador de configuración  
**Estímulo:** Anula una oferta 
**Artefacto:** Sistema   
**Ambiente:** Modo normal  
**Respuesta:** El sistema no tiene en cuenta la oferta para los resultados de consultas  
**Medición de la respuesta:** La oferta no es tenida en cuenta en promedio 5 segundos después de ser anulada

Integrabilidad / extensibilidad
-------------------------------
Derivados de los items de QAWs
* Interactibilidad con redes sociales
* interacción con usuarios de múltiples plataformas

Leo: si la integrabilidad es lo suficientemente importante para nosotros, podemos separarla como un escenario general aparte (pero que en realidad sigue siendo una especialización de modificabilidad, o sea, que el sistema pueda incorporar rápidamente una nueva red social). Yo prefiero dejarla acá (agregué un escenario).

Tipo de escenario: Portabilidad
**Fuente:** Desarrollador  
**Estímulo:** Adaptar interfaz web a un tipo de dispositivo nuevo   
**Artefacto:** Interfaz de usuario web      
**Ambiente:** Desarrollo  
**Respuesta:** Adapta exitosamente la interfaz  
**Medición de la respuesta:** El esfuerzo de es menor a 40 horas  

Tipo de escenario: Configuración de negocio
**Fuente:** Administrador de configuración
**Estímulo:** Modifica realición entre productos    
**Artefacto:** Módulo de sugerencias (?)       
**Ambiente:** En ejecución  
**Respuesta:** El sistema utiliza la nueva configuración para relacionar productos a sugerir    
**Medición de la respuesta:** La modificación demora menos de 2 minutos

Tipo de Escenario: Capacidad
**Fuente:** Administrador del sistema  
**Estímulo:** Agregar un nodo al cluster     
**Artefacto:** Sistema       
**Ambiente:** En ejecución  
**Respuesta:** El nodo se agrega y comienza a procesar exitosamente   
**Medición de la respuesta:** El nodo está operativo en menos 2 horas  
Dani dice: esta medida es excesiva
Modrow: Sos libre de cambiarla, puse algo por ponerla.

Tipo de Escenario: Interoperabilidad
**Fuente:** Desarrollador  
**Estímulo:** Integrar el sistema con una nueva red social
**Artefacto:** Sistema      
**Ambiente:** Desarrollo  
**Respuesta:** Interfaz modificada o nueva interfaz para integrar con red social 
**Medición de la respuesta:** El esfuerzo de desarrollo es menor a 40 horas

Disponibilidad
--------------
Derivados de los items de QAWs
* Deberá funcionar incluso si no hay conectividad
* Nube accesible?
* Que nunca se caiga
* Servicios cloud

Tipo de escenario: Capacidad de uso offline
**Fuente:** Usuario
**Estímulo:** Realiza consulta / envía oferta
**Artefacto:** Aplicación cliente
**Ambiente:** Sin conectividad
**Respuesta:** El sistema guarda la operación para sincronizar cuando vuelva la conectividad.
**Medición de la respuesta:** Disponibilidad offline.

Tipo de escenario: Tiempo de disponibilidad
**Fuente:** Usuario  
**Estímulo:** Realiza una consulta de ofertas  
**Artefacto:** Sistema    
**Ambiente:** Normal   
**Respuesta:** El sistema responde a la consulta   
**Medición de la respuesta:** El sistema devuelva la información el 99,9% de las veces  

Tipo de escenario: Tiempo de Reparación
**Fuente:** Nodo del cluster
**Estímulo:** Se invalida, queda inutilizado
**Artefacto:** Sistema
**Ambiente:** Normal
**Respuesta:** El sistema se adapta a los n-1 nodos, si fuera un nodo distinguido reasigna esta responsabilidad en otro nodo que se encuentre online.
**Medición de la respuesta:** El sistema se adapta en menos de 1 minuto desde la detección de la caida. Se detecta la caída en menos de 30 segundos.
      
Auditabilidad
------------- 
* SpamBust

Leo: yo unificaría con seguridad. Pero si es lo suficientemente importante, puede quedar separado. De todas manera me parece que se repite el mismo concern de auditabilidad para distintos casos de uso. No sé hasta qué punto spam detection no está más cerca de assurance o integrity que de auditing. 

**Fuente:** Administrador de configuración 
**Estímulo:** Anular oferta  
**Artefacto:** Sistema    
**Ambiente:** En ejecución   
**Respuesta:** El sistema audita la anulación   
**Medición de la respuesta:** La anulación se efectiviza inmeditamente en las búsquedas futuras.
Leo: este lo verificaría, la medición me parece más un último paso de CU que una medición de seguridad/auditabilidad.

**Fuente:** Usuarios
**Estímulo:** Envian ofertas spam
**Artefacto:** Detector de Spam
**Ambiente:** En ejecución   
**Respuesta:** El sistema audita las ofertas y marca las ofertas como spam.
**Medición de la respuesta:** El sistema detecta spam con un 95% de probabilidad.

**Fuente:** Confianza de usuario
**Estímulo:** Supera el threshold de confianza
**Artefacto:** Sistema    
**Ambiente:** En ejecución
**Respuesta:** El sistema marca al usuario como spammer y lo blacklistea
**Medición de la respuesta:** Los usuarios sin confianza se detectan con probabilidad del 90%
      
Seguridad
---------

Tipo de escenario: Autenticación (Assurance)
**Fuente:** Usuario
**Estímulo:** Se autentica
**Artefacto:** Sistema    
**Ambiente:** En ejecución    
**Respuesta:** El sistema valida las credenciales de usuario.
**Medición de la respuesta:** El sistema resiste ataques de fuerza bruta sobre las credenciales y ataques de MiTM mediante certificados.

Tipo de escenario: Ataques/Disponibilidad (dentro de Seguridad)
**Fuente:** Atacante   
**Estímulo:** Denegación de servicio distribuido 
**Artefacto:** Sistema    
**Ambiente:** En ejecución    
**Respuesta:** El sistema informa de sobrecarga en el sistema anómala    
**Medición de la respuesta:** El sistema detecta el ataque en menos de 2 minutos (?)  

