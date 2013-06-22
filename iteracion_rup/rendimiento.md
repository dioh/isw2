Table 4.3. Performance General Scenario Generation
Portion of Scenario		Possible Values

Source					One of a number of independent sources, possibly from within system
Stimulus				Periodic events arrive; sporadic events arrive; stochastic events arrive
Artifact				System
Environment				Normal mode; overload mode
Response 				Processes stimuli; changes level of service
Response Measure		Latency, deadline, throughput, jitter, miss rate, data loss

Rendimiento
-----------
Extraídos de items QAWs:
P Instantáneo (delay)
P Que sea rápido (delay)
P No hay dinero para el servidor, utilizaremos máquinas baratas (verificar éste, capaz pasa por el lado de business y vista de alocación)

**Fuente:** Usuarios  
**Estímulo:** Realiza consulta sobre ofertas de un producto
**Artefacto:** Sistema   
**Ambiente:** Modo normal  
**Respuesta:** El sistema procesa la consulta y obtiene el listado de ofertas acuerdo a la confianza personal del usuario
**Medición de la respuesta:** El pedido es procesado en promedio en menos de 2 segundos

**Fuente:** Usuarios  
**Estímulo:** Solicita visualizar el resultado de una consulta en un mapa 
**Artefacto:** Sistema   
**Ambiente:** Sistema sobrecargado  
**Respuesta:** El sistema ingresa las ofertas en el mapa y envía el mapa al usuario
**Medición de la respuesta:** El pedido es procesado en promedio en menos de 10 segundos
