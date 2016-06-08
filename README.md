# iw2016_UCAJOBS
Proyecto para la asignatura Ingeniería Web del plan de estudio "Grado en ingeniería informática" de la Universidad de Cádiz.
Consiste en un portal de publicación, búsqueda y suscripción de ofertas de empleo.

Toda la documentación pertinente al proyecto web se encuentra en la carpeta:

https://drive.google.com/drive/folders/0B55Z9Y4WmEHvOHUtNUhRemhxTmc

Las instrucciones de despliegue y montaje del proyecto se encuentran en el Documento de Implantación.
Requisitos previos

<h1>Requisitos Previos</h1>

<p>Para hacer el desplegado de la aplicación se deben tener instalados las siguientes aplicaciones en nuestro equipo:</p>
<ul>
<li>Plataforma Java: JDK 7.0.790</li>
<li>Servidor Web: Apache Tomcat 7.0.69</li>
<li>Gestión y construcción de proyectos: Maven 3.3.9</li>
<li>Entorno de desarrollo: Spring Tool Suite 3.7.3.RELEASE</li>
<li>Gestor de base de datos: MySQL 5.5</li>
<li>Control de versiones: Git</li>
</ul>

<h1>Clonación y despliegue:</h1>
<li>Para realizar la descarga de la aplicación con git se deberá abrir la terminal de Linux/Windows, e introducir el siguiente comando:</li>
 
  usuario@usuario:~$  git clone https://github.com/IngenieriaWebUCA/iw2016_UCAJOBS.git

<li>Una vez clonada y se dispone de ella en un repositorio local, hay que dirigirse al directorio raíz del proyecto e introducir en la terminal el siguiente comando para ejecutar el script que nos genera la base de datos y nos realizará el despliegue con maven:</li>
 
  usuario@usuario:~$  bash install.sh

<li>Internamente, en este fichero se ejecuta la orden mvn tomcat7:run, que se encargará de desplegar el proyecto.
Posteriormente, nos dirigimos a nuestro navegador por defecto e introducimos la siguiente URL:</li>
 
  localhost:8080/ucajobs

