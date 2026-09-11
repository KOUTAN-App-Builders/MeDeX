Este archivo README ha sido traducido de la versión en japonés mediante inteligencia artificial.

# **MeDeX**



## **[Sobre este proyecto]**
- Esta aplicación fue desarrollada con el propósito de gestionar datos de pacientes en hospitales y otros fines.
- Este proyecto consta principalmente de dos aplicaciones.
- Una aplicación para Mac y una aplicación para iOS.
- ¡Esperamos que este proyecto te sea útil!


## **[Características de la aplicación]**
### **(Aplicación para macOS)**
- La configuración del servidor dentro del hospital también se implementará en la aplicación para macOS.
- Pantallas de inicio de sesión independientes para administradores y médicos.
- Pantalla de administrador
    1. Gestión de datos de médicos (adición, edición de nombre, contraseña y departamento médico)
    2. Gestión de datos de pacientes (edición de nombre y contraseña)
    3. Gestión de datos de administradores (adición, edición de nombre y contraseña)
    4. Gestión de departamentos médicos (adición, edición y eliminación de departamentos)
    5. Configuración de red (edición de información del servidor)
- Pantalla de médico
    1. Lista de pacientes de hoy (pantalla de lista de pacientes que tendrán consulta el día de hoy)
    2. Lista general de pacientes (pantalla de lista de todos los pacientes)
    - La información personal del paciente y el historial médico (registro clínico) son accesibles desde cualquier pantalla.
    - También se proporciona una pantalla para crear historiales médicos.

### **(Aplicación para iOS)**
- Pantallas de inicio de sesión independientes para médicos y pacientes.
- Pantalla de médico
    - Funciones similares a la versión de macOS.
- Pantalla de paciente
    1. Adición de nombre, contraseña e información personal.
    2. Creación de citas.
    3. Respuesta al cuestionario médico previo a la consulta.


## **[Problemas y características esperadas]**
**Esta lista de problemas y características esperadas se restablecerá después de la próxima versión.**
- [x] Finalización de la aplicación para iOS.
- [ ] Búsqueda de médicos y pacientes desde la lista.
- [ ] Construcción de la configuración del sistema de compartición de datos en LAN usando un servidor.
- [ ] Implementación del Framework Foundation Models para apoyar la entrada de historiales médicos.
- [ ] Implementación de MedGemma para ayudar a descubrir posibles omisiones durante el diagnóstico.
- [ ] Introducción del DatePicker para citas. (Permitir verificar la disponibilidad basada en la configuración del administrador y médicos, y otras citas)
- [ ] Agregar una lista de síntomas al cuestionario médico (aplicación para iOS).
- [ ] 


## **[Enlaces a las ramas del proyecto de cada aplicación]**
**:warning: Importante**

**MeDeX ya no se divide en ramas individuales y se ha integrado en la rama `main`.** 

**Las ramas enlazadas a continuación ya no se utilizan. Se conservan como archivo.**
- Para acceder a la rama de la aplicación para iOS, haz clic [aquí](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-iOS-App).
- Para acceder a la rama de la aplicación para Mac, haz clic [aquí](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-macOS-App).
- Para acceder a la rama del Paquete Swift para la gestión de datos entre múltiples dispositivos, haz clic [aquí](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-Data-Manager-(Swift-Package)).


## **[Enlaces a los archivos README de cada proyecto: Todos en inglés]**
- Para acceder al archivo README de la aplicación para Mac, haz clic [aquí](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20Mac%20App/README%20for%20Mac%20App.EN.md).
- Para acceder al archivo README de la aplicación para iOS, haz clic [aquí](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20iOS%20App/README%20for%20iOS%20App.EN.md).
- **El archivo README para Swift Package Data Manager aún no ha sido creado. Se creará cuando sea necesario.**


## **[Referencia]**
- ChatGPT: [Enlace](https://chatgpt.com)

**¡Muchas gracias!**

## **[Del desarrollador]**
¡Gracias por visitar este repositorio!
Soy un estudiante que ingresó a la universidad en la primavera de 2026.
Además, estoy aprendiendo `Swift` y este proyecto es uno de mis primeros proyectos.
Agradecería que no hicieras pasar este proyecto como tuyo ni lo publicaras con fines comerciales.
Es posible que publique esta aplicación en la App Store en el futuro.
Creé esta aplicación con el apoyo de ChatGPT y enfrenté varios problemas, ¡pero la interfaz de usuario de la aplicación para macOS está casi completa!
Si trabajas en la industria médica y estás considerando usar esta aplicación, por favor contáctanos en gikou21doc@gmail.com.
¡También son muy bien recibidas las solicitudes de funciones y los informes de errores/bugs por parte de la comunidad de desarrolladores!
Sin embargo, dado que soy un principiante, es posible que no sepa cómo solucionarlos. Cualquier idea o sugerencia es de gran ayuda, por lo que estaría muy contento si pudieras dejar un comentario en las pestañas de Issues / Discussions.
Espero que disfrutes de esta aplicación tanto como yo. ¡Espero que todos los desarrolladores tengan una excelente experiencia de desarrollo!


Gracias, 
KOUTAN-App-Builders


    MeDeX  © 2026 by KOUTAN-App-Builders is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/