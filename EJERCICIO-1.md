# Ejercicios (I)

Revise las tablas en la base de datos de empleados y construya una serie de consultas

## Revisión de las tablas

Para revisar las tablas, se pueden ejecutar una serie de comandos en MySQL

| Comando               | Descripción                                     |
|-----------------------|-------------------------------------------------|
| `show databases`      | Muestra las bases de datos en el servidor       |
| `use employees`       | Establece `employees` como la base de datos actual |
| `show tables`         | Muestra las tablas en la base de datos actual   |

La información de empleados, los departamentos y el trabajo de cada empleado en uno o más departamentos se halla en las tablas `employees`, `dept_emp` y `departments`. 

| Comando               | Descripción                                     |
|-----------------------|-------------------------------------------------|
| `desc employees`      | Muestra la estructura de la tabla `employees`   |
| `desc departments`    | Muestra la estructura de la tabla `departments` |
| `desc dept_emp`       | Muestra la estructura de la tabla `dept_emp`    | 
| `desc salaries`       | Muestra la estructura de la tabla `salaries`    |

La información de los jefes de cada departamento aparece en las tablas `employees`, `departments` y `dept_manager`.

| Comando               | Descripción                                     |
|-----------------------|-------------------------------------------------|
| `desc employees`      | Muestra la estructura de la tabla `employees`   |
| `desc departments`    | Muestra la estructura de la tabla `departments` |
| `desc dept_manager`       | Muestra la estructura de la tabla `dept_manager`    |



---

## Ejercicios

1. Consultar todos los departamentos en donde han trabajado dos empleados en concreto:

    | emp_no | first_name | last_name |
    |--------|------------|-----------|
    | 10010  | Duangkaew  | Piveteau  |
    | 10018  | Kazuhide   | Peha      |

2. Consultar el contrato vigente de estas dos personas, i.e., el último contrato de la persona.
    - NOTA: construir el `SELECT` incluyendo la opción `LIMIT 10` para revisar solo un subconjunto de datos
    - el contrato vigente es aquel contrato con la mayor fecha de terminación, i.e., `MAX(to_date)`. 
    - las personas que todavía trabajan en el empresa son aquellas personas cuyo último contrato tiene como dato `to_date` un valor diferente a `9999-01-01`. 

3. Consultar el ultimo contrato de todas las personas, tanto los que siguen trabajando como los que ya dejaron de trabajar.
    - NOTA: construir el `SELECT` incluyendo la opción `LIMIT 10` para revisar solo un subconjunto de datos

4. Consultar las personas que todavía trabajan con nosotros

5. Consutar las personas que ya no trabajan con nosotros

6. Consultar el jefe actual de todos los departamentos
    - La información de los jefes de cada departamento está en la tabla `dept_manager`.

7. Consultar, para cada persona que ya no trabaja en la empresa, cuál era el jefe cuando dejaron de trabajar en la empresa.
