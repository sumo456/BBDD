
# Comandos DML: SELECT en SQL

Este documento contiene los diferentes usos y variaciones del comando `SELECT` en SQL, que es fundamental para realizar consultas y recuperar datos en bases de datos.

## 1. Selección Básica de Datos

- **SELECT**: Selecciona columnas específicas de una tabla.
  ```sql
  SELECT columna1, columna2, ...
  FROM nombre_tabla;
  ```

- **SELECT ***: Selecciona todas las columnas de una tabla.
  ```sql
  SELECT * FROM nombre_tabla;
  ```

## 2. Filtrado de Datos

- **WHERE**: Filtra registros con una condición específica.
  ```sql
  SELECT columna1, columna2
  FROM nombre_tabla
  WHERE condicion;
  ```

- **AND y OR**: Combina condiciones múltiples.
  ```sql
  SELECT columna1, columna2
  FROM nombre_tabla
  WHERE condicion1 AND condicion2;
  
  SELECT columna1, columna2
  FROM nombre_tabla
  WHERE condicion1 OR condicion2;
  ```

- **BETWEEN**: Selecciona valores dentro de un rango.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna BETWEEN valor1 AND valor2;
  ```

- **IN**: Selecciona valores dentro de un conjunto específico.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna IN (valor1, valor2, ...);
  ```

- **LIKE**: Filtra registros que coinciden con un patrón.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna LIKE 'patron%';
  ```

- **IS NULL**: Filtra registros con valores nulos.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna IS NULL;
  ```

## 3. Ordenación de Resultados

- **ORDER BY**: Ordena los resultados de la consulta.
  ```sql
  SELECT columna1, columna2
  FROM nombre_tabla
  ORDER BY columna1 ASC|DESC;
  ```

## 4. Funciones de Agregación

- **Funciones de Agregación**: Realiza operaciones como contar, sumar y promediar.
  ```sql
  SELECT COUNT(*), AVG(columna), SUM(columna), MAX(columna), MIN(columna)
  FROM nombre_tabla;
  ```

- **GROUP BY**: Agrupa registros para aplicar funciones de agregación.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna;
  ```

- **HAVING**: Filtra grupos después de la agregación.
  ```sql
  SELECT columna, COUNT(*)
  FROM nombre_tabla
  GROUP BY columna
  HAVING COUNT(*) > valor;
  ```

## 5. Subconsultas

- **Subconsulta en WHERE**: Filtra con base en una subconsulta.
  ```sql
  SELECT columna
  FROM nombre_tabla
  WHERE columna IN (SELECT columna FROM otra_tabla WHERE condicion);
  ```

- **Subconsulta en SELECT**: Realiza una subconsulta como columna.
  ```sql
  SELECT columna1, (SELECT columna2 FROM otra_tabla WHERE condicion) AS nombre_columna
  FROM nombre_tabla;
  ```

## 6. Uniones (JOIN)

- **INNER JOIN**: Devuelve solo registros coincidentes en ambas tablas.
  ```sql
  SELECT tabla1.columna, tabla2.columna
  FROM tabla1
  INNER JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
  ```

- **LEFT JOIN**: Devuelve todos los registros de la tabla izquierda y los coincidentes de la derecha.
  ```sql
  SELECT tabla1.columna, tabla2.columna
  FROM tabla1
  LEFT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
  ```

- **RIGHT JOIN**: Devuelve todos los registros de la tabla derecha y los coincidentes de la izquierda.
  ```sql
  SELECT tabla1.columna, tabla2.columna
  FROM tabla1
  RIGHT JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
  ```

- **FULL OUTER JOIN**: Devuelve todos los registros cuando hay coincidencias en una u otra tabla.
  ```sql
  SELECT tabla1.columna, tabla2.columna
  FROM tabla1
  FULL OUTER JOIN tabla2 ON tabla1.columna_comun = tabla2.columna_comun;
  ```

## 7. Combinaciones y Formato de Resultados

- **DISTINCT**: Elimina registros duplicados en los resultados.
  ```sql
  SELECT DISTINCT columna
  FROM nombre_tabla;
  ```

- **LIMIT**: Limita el número de registros devueltos.
  ```sql
  SELECT columna
  FROM nombre_tabla
  LIMIT numero_registros;
  ```

- **ALIAS**: Renombra columnas o tablas temporalmente.
  ```sql
  SELECT columna AS alias_columna
  FROM nombre_tabla AS alias_tabla;
  ```

---

Este documento cubre las múltiples variantes del comando `SELECT` en SQL, esencial para consultas y manipulación de datos en bases de datos.
