Table 4.2. Modifiability General Scenario Generation
Portion of Scenario		Possible Values

Source					End user, developer, system administrator
Stimulus				Wishes to add/delete/modify/vary functionality, quality attribute, capacity
Artifact				System user interface, platform, environment; system that interoperates with target system
Environment				At runtime, compile time, build time, design time
Response				Locates places in architecture to be modified; makes modification without affecting other functionality; tests modification; deploys modification
Response Measure		Cost in terms of number of elements affected, effort, money; extent to which this affects other functions or quality attributes


Integrabilidad / extensibilidad
-------------------------------
Extraídos de items QAWs:
M Interactibilidad con redes sociales (integrabilidad)
M SpamBust (intercambio transparente por implementación propia)
M interacción con usuarios de múltiples plataformas (portabilidad)
M Que funcione a escala nacional (capacidad - aunque podría interpretarse diferente, como algo de business o de disponibilidad)
M Content management de siempre (modificabilidad runtime por administrador/comercial)
	Deberá proveer productos destacados
	Proveedores podrán ser marcados y sus productos destacados
	Se deberá poder desaparecer productos
	Habrá publicidad

Tipo de Escenario: Interoperabilidad
**Fuente:** Desarrollador  
**Estímulo:** Integrar el sistema con una nueva red social
**Artefacto:** Sistema      
**Ambiente:** Desarrollo  
**Respuesta:** Interfaz modificada o nueva interfaz para integrar con red social 
**Medición de la respuesta:** El esfuerzo de desarrollo es menor a 40 horas

Tipo de Escenario: Modularidad
**Fuente:** Desarrollador  
**Estímulo:** Intercambiar Spambust por implementación propia
**Artefacto:** Sistema      
**Ambiente:** Desarrollo  
**Respuesta:** Intercambio de implementación de interfaz (inyección de nueva dependencia) 
**Medición de la respuesta:** El esfuerzo de desarrollo es menor a 8 horas

Tipo de escenario: Portabilidad
**Fuente:** Desarrollador  
**Estímulo:** Adaptar interfaz web a un tipo de dispositivo nuevo   
**Artefacto:** Interfaz de usuario web      
**Ambiente:** Desarrollo  
**Respuesta:** Adapta exitosamente la interfaz  
**Medición de la respuesta:** El esfuerzo de es menor a 40 horas  

Tipo de Escenario: Capacidad
**Fuente:** Administrador del sistema  
**Estímulo:** Agregar un nodo al cluster     
**Artefacto:** Sistema       
**Ambiente:** En ejecución  
**Respuesta:** El nodo se agrega y comienza a procesar exitosamente   
**Medición de la respuesta:** El nodo está operativo en menos 2 horas

Tipo de escenario: Content Management
**Fuente:** Administrador de configuración
**Estímulo:** Modifica realición entre productos    
**Artefacto:** Módulo de sugerencias (?)       
**Ambiente:** En ejecución  
**Respuesta:** El sistema utiliza la nueva configuración para relacionar productos a sugerir    
**Medición de la respuesta:** La modificación demora menos de 2 minutos
