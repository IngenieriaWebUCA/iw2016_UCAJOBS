
<h1>Instrucciones de instalación</h1>
Se incluyen las instrucciones de instalación y despliegue de nuestra aplicación, junto con los software necesarios para ello.

<h2>Requisitos previos</h2>
Para hacer el desplegado de la aplicación se deben tener instalados las siguientes aplicaciones en nuestro equipo:
<li>Plataforma Java: JDK 7.0.790</li>
Servidor Web: Apache Tomcat 7.0.69
Gestión y construcción de proyectos: Maven 3.3.9
Entorno de desarrollo: Spring Tool Suite 3.7.3.RELEASE
Gestor de base de datos: MySQL - WampServer
Control de versiones: Git

Clonación y despliegue: Para realizar la descarga de la aplicación con git se deberá abrir la terminal de Linux/Windows, e introducir el siguiente comando:

 usuario@usuario:~$ git clone https://github.com/IngenieriaWebUCA/iw2016_UCAJOBS.git 

Una vez clonada y se dispone de ella en un repositorio local, hay que dirigirse al directorio raíz del proyecto e introducir en la terminal el siguiente comando para ejecutar el script que nos genera la base de datos y nos realizará el despliegue con maven:

usuario@usuario:~$ bash install.sh

Internamente, en este fichero se ejecuta la orden mvn tomcat7:run, que se encargará de desplegar el proyecto. Posteriormente, nos dirigimos a nuestro navegador por defecto e introducimos la siguiente URL:

localhost:8080/ucajobs
