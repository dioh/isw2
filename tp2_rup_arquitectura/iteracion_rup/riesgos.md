Lista de Riesgos
================
* Cluster armado con insuficiente poder de computo
* Fondos insuficientes para pagar Spam-Buster
* Retraso en la implementación de reporte de ofertas dudosas
* Interfaz incomoda para usuarios
* Congestión a nivel red en el cluster
* Ataque de Negación de Servicio a la aplicación
* Robo de información de usuarios
* Caída de DB de Ofertas
* Lentitud de respuesta en la consulta de ofertas
* Alto porcentaje de ofertas dudosas
* Alto porcentaje de usuarios dudosos
* Información no confiada por los usuarios
* No utilización del sistema por usuarios pagos
* Integración con servicios heterogeneos no descubre correctamente las ofertas
* Alta complejidad de desarrollo precisa recursos altamente calificados

* Fondos insuficientes para terminar la implementación del proyecto
* Descubrir luego de la integración que Spam-Buster no nos provee el servicio requerido


TODO: Agregan riesgos que impliquen a los equipos de desarrollo.

Detalles riesgos
====================

Riesgo 1
---------- 

* ***Descripcion***: Dado que se espera un volumen de trafico muy grande es posible que los servidores no en a basto y el sistema quede inaccesible.
* ***Probabilidad***: Alta
* ***Impacto***: Alto ́
* ***Exposicion***: Alta
* ***Acciones de mitigacion***: Disenar arquitectura que escale horizontalmente y sea facil agregar capacidad de procesamiento
* ***Plan de contingencia***: Detectar puntos cr ́ticos y agregar instancias nuevas de procesamiento


