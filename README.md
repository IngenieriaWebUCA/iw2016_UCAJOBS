# iw2016_UCAJOBS
Proyecto para la asignatura Ingeniería Web del plan de estudio "Grado en ingeniería informática" de la Universidad de Cádiz.
Consiste en un portal de publicación, búsqueda y suscripción de ofertas de empleo.

Toda la documentación pertinente al proyecto web se encuentra en la carpeta:

https://drive.google.com/drive/folders/0B55Z9Y4WmEHvOHUtNUhRemhxTmc

Las instrucciones de despliegue y montaje del proyecto se encuentran en el Documento de Implantación.

Clonación y despliegue:
Para realizar la descarga de la aplicación con git se deberá abrir la terminal de Linux/Window, e introducir el siguiente comando:
  usuario@usuario:~$  git clone https://github.com/IngenieriaWebUCA/iw2016_UCAJOBS.git

Una vez clonada y se dispone de ella en un repositorio local, hay que dirigirse al directorio raíz del proyecto e introducir en la terminal el siguiente comando para ejecutar el script que nos genera la base de datos y nos realizará el despliegue con maven:
  usuario@usuario:~$  bash install.sh

Internamente, en este fichero se ejecuta la orden mvn tomcat7:run, que se encargará de desplegar el proyecto.
Posteriormente, nos dirigimos a nuestro navegador por defecto e introducimos la siguiente URL
  localhost:8080/ucajobs

