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

1.    Usabilidad

      **Fuente:** Usuario  
      **Estímulo:** Desea realizar por primera vez una consulta simple (ofertas de un producto o cercanas a un dirección)  
      **Artefacto:** Sistema  
      **Ambiente:** En ejecución  
	  **Respuesta:** Realiza la consulta sin inconvenientes  
      **Medición de la respuesta:** Realiza la consulta en menos de 30 segundos  

	  **Fuente:** Usuario  
      **Estímulo:** Desea ingresar bien el producto o dirección  
      **Artefacto:** Sistema  
      **Ambiente:** En ejecución  
      **Respuesta:** Texto predictivo al ingresar un producto o dirección en base a valores aceptados por el sistema   
      **Medición de la respuesta:** La lista de predicciones aparece en menos de 1 s. de ingresar una letra  

	  **Fuente:** Usuario  
      **Estímulo:** Desea asignar confiabilidad a un usuario u oferta  
      **Artefacto:** Sistema  
      **Ambiente:** En ejecución  
      **Respuesta:** Se asigna la confiabilidad solicitada por el usuario  
      **Medición de la respuesta:** La asiganción se realiza en menos de 10 segundos  

	  **Fuente:** Usuario  
      **Estímulo:** Desea agregar un ítem a su listado de confianza personal  
       **Artefacto:** Sistema  
      **Ambiente:** En ejecución  
      **Respuesta:** El ítem es configurado exitosamente en la posición indicada de la lista  
      **Medición de la respuesta:** El ítem se agrega en menos de 2 minutos  

2.    Rendimiento

	  **Fuente:** Usuario  
      **Estímulo:** Realiza consulta sobre ofertas de un producto
      **Artefacto:** Sistema   
      **Ambiente:** Modo normal  
      **Respuesta:** El sistema procesa la consulta y obtiene el listado de ofertas acuerdo a la confianza personal del usuario
      **Medición de la respuesta:** El pedido es procesado en promedio en menos de 2 segundos
      
	  **Fuente:** Usuario  
      **Estímulo:** Solicita visualizar el resultado de una consulta en un mapa 
      **Artefacto:** Sistema   
      **Ambiente:** Modo normal  
      **Respuesta:** El sistema ingresa las ofertas en el mapa y envía el mapa al usuario
      **Medición de la respuesta:** El pedido es procesado en promedio en menos de 10 segundos

	  **Fuente:** Usuario  
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

3.    Integrabilidad / extensibilidad

	  **Fuente:** Desarrollador  
      **Estímulo:** Adaptar interfaz web a un tipo de dispositivo nuevo   
      **Artefacto:** Interfaz de usuario web      
      **Ambiente:** Desarrollo  
      **Respuesta:** Adapta exitosamente la interfaz  
      **Medición de la respuesta:** El esfuerzo de es menor a 40 horas  

	  **Fuente:** Administrador del sistema  
      **Estímulo:** Agregar un nodo al cluster     
      **Artefacto:** Sistema       
      **Ambiente:** En ejecución  
      **Respuesta:** El nodo se agrega y comienza a procesar exitosamente   
      **Medición de la respuesta:** El nodo está operativo en menos 2 horas  

4.    Disponibilidad
	  
	  **Fuente:**   
      **Estímulo:**  
      **Artefacto:**    
      **Ambiente:**   
      **Respuesta:**   
      **Medición de la respuesta:**  
      
5.    Auditabilidad
	  
	  **Fuente:**   
      **Estímulo:**  
      **Artefacto:**    
      **Ambiente:**   
      **Respuesta:**   
      **Medición de la respuesta:**  
      
6.    Seguridad

	  **Fuente:**   
      **Estímulo:**  
      **Artefacto:**    
      **Ambiente:**    
      **Respuesta:**    
      **Medición de la respuesta:**  
