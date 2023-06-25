## Definiciones:



```sql
`CREATE TABLE`: Inicia la declaración para crear una nueva tabla en la base de datos.
```

```sql
'NOT NULL' : que no puede tener valores nulos
```

```sql
'CURRENT_TIMESTAMP': lo que significa que se establecerá automáticamente en la fecha y hora actual cuando se inserte un nuevo registro en la tabla
```

```sql
'PRIMARY KEY (id)' : clave primaria de la tabla. Esto garantiza que cada valor en esta columna sea único y permite una identificación única de cada registro en la tabla
```

```sql
'CONSTRAINT' : se utiliza para definir restricciones o reglas adicionales en una tabla. Estas restricciones aseguran que los datos cumplan ciertas condiciones para garantizar la integridad y consistencia de los datos almacenados en la base de datos.
Al crear una tabla, puedes utilizar la cláusula CONSTRAINT para especificar restricciones en diferentes niveles, como restricciones de columna o restricciones de tabla.
```

```sql
FOREIGN KEY:  se utiliza para establecer una relación entre dos tablas basada en una columna común. Define una restricción de integridad referencial que asegura que los valores en la columna de la tabla secundaria coincidan con los valores existentes en la columna de la tabla principal.
```

```sql
'DEFAULT CHARSET=utf8mb4'  y  'COLLATE=utf8mb4_unicode_ci' : Define el conjunto de caracteres predeterminado (`utf8mb4`) y la configuración de ordenamiento (`utf8mb4_unicode_ci`) para la tabla.
```

```sql
ALTER TABLE : Indica que se realizarán modificaciones en la tabla
```

```sql
MODIFY : Indica que se realizarán modificaciones en la columna llamada
```

```sql
AUTO_INCREMENT: Establece la propiedad de incremento automático para la columna `id`, lo que significa que se generará automáticamente un valor único y creciente para cada nueva fila insertada en la tabla.
```

```sql
ADD PRIMARY KEY(id): Agrega una restricción de clave primaria a la columna `id` en la tabla `nn`. Esto define la columna `id` como la clave primaria de la tabla, lo que implica que debe contener valores únicos y no nulos.
```



### tipos de datos:

- **VARCHAR(n)**: Representa una cadena de caracteres de longitud variable, donde `n` especifica el número máximo de caracteres permitidos. Por ejemplo, VARCHAR(50) puede almacenar una cadena de hasta 50 caracteres.

- **CHAR(n)**: Representa una cadena de caracteres de longitud fija, donde `n` especifica la longitud exacta de la cadena. Por ejemplo, CHAR(10) siempre almacenará una cadena de 10 caracteres, rellenando con espacios en blanco si la cadena es más corta.

- **INT**: Representa un número entero de tamaño estándar (generalmente 4 bytes) que puede almacenar valores enteros en un rango determinado.

- **BIGINT**: Representa un número entero de tamaño grande (generalmente 8 bytes) que puede almacenar valores enteros más grandes que el tipo INT.

- **FLOAT**: Representa un número de punto flotante de precisión simple, que puede almacenar valores decimales con una precisión limitada.

- **DOUBLE**: Representa un número de punto flotante de precisión doble, que puede almacenar valores decimales con una mayor precisión que el tipo FLOAT.

- **DECIMAL(p, s)**: Representa un número decimal con una precisión y escala específicas. `p` especifica la precisión total (número total de dígitos) y `s` especifica la escala (número de dígitos decimales).

- **DATE**: Representa una fecha sin hora en el formato 'YYYY-MM-DD'.

- **TIME**: Representa una hora sin fecha en el formato 'HH:MM:SS'.

- **DATETIME**: Representa una combinación de fecha y hora en el formato 'YYYY-MM-DD HH:MM:SS'.

- **BOOLEAN**: Representa un valor booleano que puede ser verdadero (`TRUE`) o falso (`FALSE`).

  

#### comandos en consola:

**mysql -u name_db -p :** Es el comando para iniciar la consola de MySQL. Al ejecutar este comando, se abrirá la consola de MySQL y podrás interactuar con la base de datos

1. **`SHOW DATABASES;`**: Muestra una lista de todas las bases de datos disponibles en el servidor de MySQL.
2. **`USE database_name;`**: Selecciona una base de datos específica para usar. Reemplaza `database_name` por el nombre de la base de datos que deseas utilizar.
3. **`SHOW TABLES;`**: Muestra una lista de todas las tablas en la base de datos seleccionada.
4. **`DESCRIBE table_name;`** o **`DESC table_name;`**: Muestra la estructura de una tabla específica. Reemplaza `table_name` por el nombre de la tabla que deseas describir.
5. **`SELECT \* FROM table_name;`**: Recupera todos los registros de una tabla específica. Reemplaza `table_name` por el nombre de la tabla de la que deseas obtener los registros.
6. **`INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);`**: Inserta un nuevo registro en una tabla específica. Reemplaza `table_name` por el nombre de la tabla en la que deseas insertar el registro y proporciona los nombres de columna y valores correspondientes.
7. **`UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;`**: Actualiza registros en una tabla específica. Reemplaza `table_name` por el nombre de la tabla que deseas actualizar y proporciona las columnas y los valores nuevos. Puedes agregar una condición para especificar qué registros actualizar.
8. **`DELETE FROM table_name WHERE condition;`**: Elimina registros de una tabla específica. Reemplaza `table_name` por el nombre de la tabla de la que deseas eliminar registros y agrega una condición para seleccionar los registros que se eliminarán.
9. **`QUIT;`** o **`EXIT;`**: Cierra la consola de MySQL y sale del programa.

1. **`DROP USER username;`**: Elimina un usuario de la base de datos. Reemplaza `username` por el nombre del usuario que deseas eliminar.
2. **`DROP TABLE table_name;`**: Elimina una tabla de la base de datos. Reemplaza `table_name` por el nombre de la tabla que deseas eliminar.
3. **`GRANT privileges ON database_name.table_name TO 'username'@'host';`**: Concede privilegios específicos a un usuario en una base de datos y tabla específicas. Reemplaza `privileges` con los privilegios que deseas otorgar (por ejemplo, SELECT, INSERT, UPDATE, DELETE, etc.), `database_name` con el nombre de la base de datos, `table_name` con el nombre de la tabla, `username` con el nombre de usuario y `host` con la ubicación del host (por ejemplo, 'localhost', '127.0.0.1', etc.).  para una tabla en especifico => database_name.table_name. para todas las tablas => *.*