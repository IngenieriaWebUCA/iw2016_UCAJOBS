#!bin/sh
echo 
echo "**********    Script instalacion Ucajobs **********"
echo 
read -p "Introduzca usuario Mysql: " USER
read -p "Introduzca password Mysql: " PASS

mysql --user="$USER" --password="$PASS" < ucajobs.sql

echo "Puede acceder a la aplicación una vez termine de desplegarse en el servidor, mediante la URL:"
echo "- http://localhost:8080/ucajobs/"
read -p "Pulse una tecla para comenzar..."

mvn clean compile tomcat7:run 