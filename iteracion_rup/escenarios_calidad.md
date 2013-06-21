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
* SpamBust
* interacción con usuarios de múltiples plataformas


**Fuente:** Desarrollador  
**Estímulo:** Adaptar interfaz web a un tipo de dispositivo nuevo   
**Artefacto:** Interfaz de usuario web      
**Ambiente:** Desarrollo  
**Respuesta:** Adapta exitosamente la interfaz  
**Medición de la respuesta:** El esfuerzo de es menor a 40 horas  

**Fuente:** Administrador de configuración
**Estímulo:** Modifica realición entre productos    
**Artefacto:** Módulo de sugerencias (?)       
**Ambiente:** En ejecución  
**Respuesta:** El sistema utiliza la nueva configuración para relacionar productos a sugerir    
**Medición de la respuesta:** La modificación demora menos de 2 minutos

**Fuente:** Administrador del sistema  
**Estímulo:** Agregar un nodo al cluster     
**Artefacto:** Sistema       
**Ambiente:** En ejecución  
**Respuesta:** El nodo se agrega y comienza a procesar exitosamente   
**Medición de la respuesta:** El nodo está operativo en menos 2 horas  
Dani dice: esta medida es excesiva
Modrow: Sos libre de cambiarla, puse algo por ponerla.

Disponibilidad
--------------
Derivados de los items de QAWs
* Deberá funcionar incluso si no hay conectividad
* Nube accesible?
* Que nunca se caiga
* Servicios cloud

**Fuente:** Usuario
**Estímulo:** Realiza consulta / envía oferta
**Artefacto:** Aplicación cliente
**Ambiente:** Sin conectividad
**Respuesta:** El sistema guarda la operación para sincronizar cuando vuelva la conectividad.
**Medición de la respuesta:** Disponibilidad offline.
	  
**Fuente:** Usuario  
**Estímulo:** Realiza una consulta de ofertas  
**Artefacto:** Sistema    
**Ambiente:** Normal   
**Respuesta:** El sistema responde a la consulta   
**Medición de la respuesta:** El sistema devuelva la información el 99,9% de las veces  
      
Auditabilidad
------------- 

**Fuente:** Administrador de configuración 
**Estímulo:** Anular oferta  
**Artefacto:** Sistema    
**Ambiente:** En ejecución   
**Respuesta:** El sistema audita la anulación   
**Medición de la respuesta:** (?) 
      
Seguridad
---------

**Fuente:** Atacante   
**Estímulo:** Denegación de servicio distribuido 
**Artefacto:** Sistema    
**Ambiente:** En ejecución    
**Respuesta:** El sistema informa de sobrecarga en el sistema anómala    
**Medición de la respuesta:** El sistema detecta el ataque en menos de 2 minutos (?)  


Escenarios extraidos de QAWs
============================

Usabilidad
----------
#. 
      **fuente:** 
      **estímulo:**  
      **artefacto:**    
      **ambiente:**    
      **respuesta:**    
      **medición de la respuesta:**


Plantilla: 
	  **fuente:** 
      **estímulo:**  
      **artefacto:**    
      **ambiente:**    
      **respuesta:**    
      **medición de la respuesta:**
