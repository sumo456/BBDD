
# Comandos Básicos de SQL

## 1. Comandos de DDL (Data Definition Language)
Estos comandos se usan para definir y modificar la estructura de la base de datos.

- **CREATE DATABASE**: Crea una nueva base de datos.
  ```sql
  CREATE DATABASE nombre_base_datos;
  ```

- **CREATE TABLE**: Crea una nueva tabla dentro de una base de datos.
  ```sql
  CREATE TABLE nombre_tabla (
      columna1 tipo_dato restriccion,
      columna2 tipo_dato restriccion,
      ...
  );
  ```

- **ALTER TABLE**: Modifica una tabla existente (agregar, eliminar o modificar columnas).
  ```sql
  ALTER TABLE nombre_tabla
  ADD columna tipo_dato;
  ```

- **DROP TABLE**: Elimina una tabla existente junto con todos sus datos.
  ```sql
  DROP TABLE nombre_tabla;
  ```

- **DROP DATABASE**: Elimina una base de datos completa.
  ```sql
  DROP DATABASE nombre_base_datos;
  ```

## 2. Comandos de DML (Data Manipulation Language)
Estos comandos permiten manipular los datos dentro de las tablas.

- **INSERT INTO**: Inserta nuevos datos en una tabla.
  ```sql
  INSERT INTO nombre_tabla (columna1, columna2, ...)
  VALUES (valor1, valor2, ...);
  ```

- **UPDATE**: Modifica datos existentes en una tabla.
  ```sql
  UPDATE nombre_tabla
  SET columna = nuevo_valor
  WHERE condicion;
  ```

- **DELETE**: Elimina datos específicos de una tabla.
  ```sql
  DELETE FROM nombre_tabla
  WHERE condicion;
  ```

## 3. Comandos de DQL (Data Query Language)
Estos comandos se usan para consultar datos en las tablas.

- **SELECT**: Selecciona datos de una o más tablas.
  ```sql
  SELECT columna1, columna2, ...
  FROM nombre_tabla
  WHERE condicion;
  ```

- **WHERE**: Filtra registros basados en una condición.
  ```sql
  SELECT * FROM nombre_tabla
  WHERE condicion;
  ```

- **ORDER BY**: Ordena los resultados de la consulta en orden ascendente o descendente.
  ```sql
  SELECT columna1, columna2
  FROM nombre_tabla
  ORDER BY columna1 ASC|DESC;
  ```

- **GROUP BY**: Agrupa los resultados según una o más columnas.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna;
  ```

- **HAVING**: Filtra grupos de datos después de la agrupación.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna
  HAVING COUNT(*) > valor;
  ```

## 4. Comandos de DCL (Data Control Language)
Estos comandos se usan para manejar permisos y control de acceso en la base de datos.

- **GRANT**: Otorga permisos a los usuarios.
  ```sql
  GRANT permiso ON objeto TO usuario;
  ```

- **REVOKE**: Revoca permisos previamente otorgados.
  ```sql
  REVOKE permiso ON objeto FROM usuario;
  ```

## 5. Comandos de TCL (Transaction Control Language)
Estos comandos controlan las transacciones en SQL.

- **COMMIT**: Guarda todas las transacciones realizadas.
  ```sql
  COMMIT;
  ```

- **ROLLBACK**: Revierte las transacciones realizadas hasta el último COMMIT.
  ```sql
  ROLLBACK;
  ```

- **SAVEPOINT**: Crea un punto de restauración dentro de una transacción.
  ```sql
  SAVEPOINT nombre_punto;
  ```

- **RELEASE SAVEPOINT**: Elimina un punto de restauración específico.
  ```sql
  RELEASE SAVEPOINT nombre_punto;
  ```

- **SET TRANSACTION**: Establece características para la transacción actual, como el nivel de aislamiento.
  ```sql
  SET TRANSACTION ISOLATION LEVEL nivel;
  ```

---

Este archivo cubre los comandos básicos de SQL para la creación, manipulación y consulta de datos, así como para el control de acceso y transacciones.
