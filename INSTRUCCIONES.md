# Instrucciones

1. actualizar el MySQL en la imagen de Docker. Modificar la imagen de base de `FROM mysql:5.7.39` a  `FROM mysql:8.0.32`  
    En el `Dockerfile`
    ```
    ## quitar FROM mysql:5.7.39
    ## y colocar
    FROM mysql:8.0.32
    ```

2. Crear la imagen de docker
    En la terminal,
    ```
    ./crear-imagen.sh
    ```

3. Ejecutar `docker images` para revisar que se halla creado la imagen. Debe aparecer, en el listado, la imagen `mysql-employees`

    ```
    docker images
    ```

4. Usar el script `./ejecutar-contenedor.sh` para iniciar el contenedor con el mysql

    ```
    ./ejecutar-contenedor.sh
    ```

    En caso de error debido a que ya está corriendo un contenedor con ese nombre, se puede ejecutar `./detener-contenedor.sh`

    ```
    ./detener-contenedor.sh
    ```

5. Cuando el contenedor está funcionando, ejecutar `./ejecutar-mysql.sh` para correr el cliente de MySQL. Para ingresar se puede usar el password `secret`

    ```
    ./ejecutar-mysql.sh
    ```