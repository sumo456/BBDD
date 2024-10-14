# Normalización de Bases de Datos

La **normalización** es un proceso de organización de los datos en una base de datos para reducir la redundancia y mejorar la integridad. Se lleva a cabo siguiendo una serie de reglas conocidas como "Formas Normales". Cada forma normal elimina ciertos tipos de redundancia y dependencia de los datos.

## Primera Forma Normal (1FN)
La **1FN** establece que todos los atributos de una tabla deben contener **valores atómicos**, es decir, indivisibles. También exige que no haya grupos repetitivos.

### Reglas de la 1FN:
1. Todos los valores deben ser atómicos.
2. No debe haber listas o conjuntos de valores.
3. Cada registro debe ser único.

### Ejemplo:

| ID Cliente | Nombre   | Teléfono          |
|------------|----------|-------------------|
| 1          | Juan     | 123-456           |
| 2          | María    | 987-654           |
| 3          | Pedro    | 654-321           |

Si se almacena más de un número de teléfono por cliente en la misma fila, la tabla estaría violando la 1FN, ya que estaría almacenando múltiples valores en un solo campo.

## Segunda Forma Normal (2FN)
La **2FN** se aplica a tablas que ya cumplen con la 1FN y elimina las **dependencias parciales**. Esto significa que cada campo no clave debe depender de la **clave primaria completa**, no de parte de ella.

### Reglas de la 2FN:
1. Cumple con la 1FN.
2. No debe haber atributos que dependan solo de una parte de una clave primaria compuesta.

### Ejemplo:

| ID Pedido | ID Producto | Cantidad | Precio Producto |
|-----------|-------------|----------|-----------------|
| 1         | A           | 10       | 100             |
| 1         | B           | 5        | 200             |

Aquí, la clave primaria está compuesta por **ID Pedido** y **ID Producto**, pero si el precio del producto depende solo del ID del producto, es necesario mover este dato a otra tabla.

| ID Producto | Precio Producto |
|-------------|-----------------|
| A           | 100             |
| B           | 200             |

## Tercera Forma Normal (3FN)
La **3FN** elimina las **dependencias transitivas**, lo que significa que un campo no clave no debe depender de otro campo no clave.

### Reglas de la 3FN:
1. Cumple con la 2FN.
2. No debe haber dependencias transitivas.

### Ejemplo:

| ID Empleado | Departamento | Gerente Departamento |
|-------------|--------------|----------------------|
| 1           | Ventas       | Sr. Pérez            |
| 2           | Compras      | Sra. González        |

En este caso, el **Gerente Departamento** depende de **Departamento** en lugar de depender directamente de **ID Empleado**, por lo que debería estar en una tabla separada:

| Departamento | Gerente |
|--------------|---------|
| Ventas       | Sr. Pérez |
| Compras      | Sra. González |

## Cuarta Forma Normal (4FN)
La **4FN** elimina las **dependencias multivaluadas**, lo que significa que una tabla no debe contener más de un conjunto independiente de datos multivaluados.

### Reglas de la 4FN:
1. Cumple con la 3FN.
2. No debe haber dependencias multivaluadas.

### Ejemplo:

Si tenemos una tabla que almacena los proyectos en los que trabajan los empleados y sus habilidades:

| ID Empleado | Proyecto   | Habilidad   |
|-------------|------------|-------------|
| 1           | Proyecto A | Programación|
| 1           | Proyecto B | Diseño      |

Aquí, hay dos conjuntos de datos multivaluados: proyectos y habilidades. Para cumplir con la 4FN, se deben separar en dos tablas.

## Quinta Forma Normal (5FN)
La **5FN** se enfoca en eliminar cualquier redundancia que pueda surgir al dividir una relación en múltiples tablas.

### Reglas de la 5FN:
1. Cumple con la 4FN.
2. No debe haber redundancias que puedan ser eliminadas mediante la descomposición de las tablas.

La 5FN es más teórica y rara vez se utiliza en la práctica cotidiana.

## Sexta Forma Normal (6FN)
La **6FN** es la forma más avanzada y se centra en la descomposición de las tablas en estructuras que garanticen una mínima redundancia. Se usa principalmente en bases de datos de tiempo real.

---

## Conclusiones
- La normalización mejora la integridad y evita inconsistencias.
- Cada forma normal resuelve un tipo específico de problema relacionado con las dependencias o redundancias.
- Aunque la 6FN existe, la mayoría de las bases de datos aplican hasta la 3FN.

