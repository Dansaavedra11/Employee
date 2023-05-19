FROM mysql:8.0.32

ENV MYSQL_DATABASE employees

COPY ./scripts-para-contenedor/ /docker-entrypoint-initdb.d/
