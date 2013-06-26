Table 4.4. Security General Scenario Generation
Portion of Scenario		Possible Values

Source					Individual or system that is
							correctly identified, identified incorrectly, of unknown identity
						who is
							internal/external, authorized/not authorized
						with access to
							limited resources, vast resources
Stimulus				Tries to
							display data, change/delete data, access system services, reduce availability to system services
Artifact				System services; data within system
Environment 			Either
							online or offline, connected or disconnected, firewalled or open
Response				Authenticates user; hides identity of the user; blocks access to data and/or services; allows access to data and/or services; grants or withdraws permission to access data and/or services; records access/modifications or attempts to access/modify data/services by identity; stores data in an unreadable format; recognizes an unexplainable high demand for services, and informs a user or another system, and restricts availability of services
Response Measure		Time/effort/resources required to circumvent security measures with probability of success; probability of detecting attack; probability of identifying individual responsible for attack or access/modification of data and/or services; percentage of services still available under denial-of-services attack; restore data/services; extent to which data/services damaged and/or legitimate access denied

Seguridad
------------- 
S Datos buenos vs usuarios buenos
S Banning de usuarios

Tipo de escenario: Calidad de datos/Detección de Spam
**Fuente:** Usuarios
**Estímulo:** Envian ofertas spam
**Artefacto:** Detector de Spam
**Ambiente:** En ejecución   
**Respuesta:** El sistema marca las ofertas como spam.
**Medición de la respuesta:** El sistema detecta spam con un 95% de probabilidad.

Tipo de escenario: Calidad de datos/Detección de Spam
**Fuente:** Confianza de usuario
**Estímulo:** Supera el threshold de confianza
**Artefacto:** Sistema    
**Ambiente:** En ejecución
**Respuesta:** El sistema marca al usuario como spammer y lo blacklistea
**Medición de la respuesta:** Los usuarios sin confianza se detectan con probabilidad del 90%

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

Tipo de escenario: Auditoría
**Fuente:** Administrador de configuración 
**Estímulo:** Anular oferta  
**Artefacto:** Sistema    
**Ambiente:** En ejecución   
**Respuesta:** El sistema audita la anulación   
**Medición de la respuesta:** Se identifica con una probabilidad mayor al 99% al responsable de la modificación.
