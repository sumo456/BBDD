
# Comandos Avanzados de SQL

Este documento cubre comandos SQL avanzados, incluyendo manipulación de datos, consultas complejas, índices y vistas.

## 1. Comandos de DDL (Data Definition Language)
Comandos para definir y modificar la estructura de la base de datos.

- **CREATE DATABASE**: Crea una base de datos.
  ```sql
  CREATE DATABASE nombre_base_datos;
  ```

- **CREATE TABLE**: Define una tabla con sus columnas y restricciones.
  ```sql
  CREATE TABLE nombre_tabla (
      columna1 tipo_dato restriccion,
      columna2 tipo_dato restriccion,
      ...
  );
  ```

- **ALTER TABLE**: Modifica una tabla (añadir/eliminar/modificar columnas).
  ```sql
  ALTER TABLE nombre_tabla
  ADD columna tipo_dato;
  ```

- **DROP TABLE**: Elimina una tabla.
  ```sql
  DROP TABLE nombre_tabla;
  ```

- **DROP DATABASE**: Elimina una base de datos.
  ```sql
  DROP DATABASE nombre_base_datos;
  ```

- **CREATE INDEX**: Crea un índice en una columna para mejorar la velocidad de búsqueda.
  ```sql
  CREATE INDEX nombre_indice ON nombre_tabla(columna);
  ```

- **DROP INDEX**: Elimina un índice.
  ```sql
  DROP INDEX nombre_indice ON nombre_tabla;
  ```

## 2. Comandos de DML (Data Manipulation Language)
Manipulación de datos dentro de las tablas.

- **INSERT INTO**: Inserta registros en una tabla.
  ```sql
  INSERT INTO nombre_tabla (columna1, columna2, ...)
  VALUES (valor1, valor2, ...);
  ```

- **UPDATE**: Actualiza datos específicos.
  ```sql
  UPDATE nombre_tabla
  SET columna = nuevo_valor
  WHERE condicion;
  ```

- **DELETE**: Elimina datos de la tabla según una condición.
  ```sql
  DELETE FROM nombre_tabla
  WHERE condicion;
  ```

## 3. Comandos de DQL (Data Query Language)
Consultas de datos avanzadas en las tablas.

- **SELECT**: Consulta básica de datos.
  ```sql
  SELECT columna1, columna2
  FROM nombre_tabla
  WHERE condicion;
  ```

- **DISTINCT**: Filtra resultados duplicados.
  ```sql
  SELECT DISTINCT columna FROM nombre_tabla;
  ```

- **AGGREGATE FUNCTIONS**: Funciones de agregación.
  ```sql
  SELECT AVG(columna), COUNT(*), MAX(columna), MIN(columna), SUM(columna)
  FROM nombre_tabla;
  ```

- **JOIN**: Combina filas de múltiples tablas.
  - **INNER JOIN**:
    ```sql
    SELECT tabla1.columna, tabla2.columna
    FROM tabla1
    INNER JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
    ```
  - **LEFT JOIN**:
    ```sql
    SELECT tabla1.columna, tabla2.columna
    FROM tabla1
    LEFT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
    ```
  - **RIGHT JOIN**:
    ```sql
    SELECT tabla1.columna, tabla2.columna
    FROM tabla1
    RIGHT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
    ```

- **GROUP BY**: Agrupa registros para funciones agregadas.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna;
  ```

- **HAVING**: Filtro después de `GROUP BY`.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna
  HAVING COUNT(*) > valor;
  ```

- **SUBQUERIES**: Consultas dentro de otras consultas.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna IN (SELECT columna FROM otra_tabla WHERE condicion);
  ```

## 4. Comandos de DCL (Data Control Language)
Control de permisos de acceso.

- **GRANT**: Otorga permisos.
  ```sql
  GRANT SELECT, INSERT ON nombre_tabla TO usuario;
  ```

- **REVOKE**: Revoca permisos.
  ```sql
  REVOKE INSERT ON nombre_tabla FROM usuario;
  ```

## 5. Comandos de TCL (Transaction Control Language)
Control de transacciones avanzadas.

- **COMMIT**: Guarda los cambios de una transacción.
  ```sql
  COMMIT;
  ```

- **ROLLBACK**: Revierte cambios hasta el último COMMIT.
  ```sql
  ROLLBACK;
  ```

- **SAVEPOINT**: Crea un punto de restauración en una transacción.
  ```sql
  SAVEPOINT nombre_punto;
  ```

- **RELEASE SAVEPOINT**: Elimina un punto de restauración específico.
  ```sql
  RELEASE SAVEPOINT nombre_punto;
  ```

- **SET TRANSACTION**: Define el nivel de aislamiento de una transacción.
  ```sql
  SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
  ```

## 6. Vistas y Procedimientos Almacenados

- **CREATE VIEW**: Define una vista.
  ```sql
  CREATE VIEW nombre_vista AS
  SELECT columna1, columna2
  FROM nombre_tabla
  WHERE condicion;
  ```

- **DROP VIEW**: Elimina una vista.
  ```sql
  DROP VIEW nombre_vista;
  ```

- **CREATE PROCEDURE**: Define un procedimiento almacenado.
  ```sql
  CREATE PROCEDURE nombre_procedimiento (parametros)
  BEGIN
      -- instrucciones SQL
  END;
  ```

- **CALL**: Ejecuta un procedimiento almacenado.
  ```sql
  CALL nombre_procedimiento (parametros);
  ```

- **CREATE FUNCTION**: Define una función almacenada.
  ```sql
  CREATE FUNCTION nombre_funcion(parametros) RETURNS tipo_dato
  BEGIN
      RETURN expresion;
  END;
  ```

---

Este documento proporciona un conjunto completo de comandos SQL avanzados para consultas, manipulación de datos, vistas y procedimientos almacenados.
