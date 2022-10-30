1. Crear una Base de Datos
    cursor = myDB.cursor()
    cursor.execute("CREATE DATABASE ejemplo")


2. Crear una tabla en una Base de Datos
    cursor = myDB.cursor()
    cursor.execute("CREATE TABLE alumnos (alumno VARCHAR(255), edad VARCHAR(255))")

    sql = myDB.cursor()
    studentRecord = """CREATE TABLE alumnos (
                    alumno  VARCHAR(20) NOT NULL,
                    edad  INT NOT NULL
                    )"""
    sql.execute(studentRecord)
    myDB.close()


3. Mostrar tablas en la BD
    cursor = myDB.cursor()
    cursor.execute("SHOW TABLES")

    for x in cursor:
        print(x)

4. Insertar datos a una tabla
    cursor = myDB.cursor()
    sql = "INSERT INTO alumnos(alumno, edad) VALUES (%s,%s)"
    val = ("Urian","20")
    cursor.execute(sql,val)
    myDB.commit()  
    print(cursor.rowcount,"Alumno registrado correctamente".)
    myDB.close() /*Cerrando conexion a BD**/


5. Insertando multiples Registros
    cursor = myDB.cursor()
    sql = "INSERT INTO alumnos(alumno, edad) VALUES (%s,%s)"
    val = [
        ('Any','17'),
        ('Alberto','20'),
        ('Alejandro','10'),
        ('Suscribete','1')
    ]
    cursor.executemany(sql,val)
    myDB.commit()      
    print(cursor.rowcount,"Alumnos registrados".)
    myDB.close() /*Cerrando conexion a BD**/


6. Obtener el ultimo registro insertado
    cursor = myDB.cursor()
    sql = "INSERT INTO alumnos(alumno, edad) VALUES (%s,%s)"
    val = ("Jefferson","32")
    cursor.execute(sql,val)

    myDB.commit()        
    print("Se ha insertado 1 Alumno, Id:",cursor.lastrowid)


7. Consultar datos
cursor = myDB.cursor()
cursor.execute("SELECT * FROM alumnos")
myresult = cursor.fetchall()       

for x in myresult:
    print(x)


8. Mostrar 1 solo Registro
sql = myDB.cursor()
/* sql.execute("SELECT * FROM alumnos LIMIT 1") */
sql.execute("SELECT * FROM alumnos")
result = sql.fetchone()
print(result)


9. Consulta SQL con Cláusula Where en MySQL usuando Python
sql = myDB.cursor()
/*query = "SELECT * FROM alumnos ORDER BY edad DESC" */  
query = "SELECT * FROM alumnos where edad >=20"
sql.execute(query)
result = sql.fetchall()
   
for x in result:
    print(x)
myDB.close() /*Cerrando conexion a BD**/


10. Actualizar Registros con MySQL en table usando Python
sql = myDB.cursor()
query = "UPDATE alumnos SET edad = 15 WHERE nombre ='Urian'"
sql.execute(query)
myDB.commit()
myDB.close() /*Cerrando conexion a BD**/   


11. Borrar Alumno en la tabla
sql = myDB.cursor()  
query = "DELETE FROM alumnos WHERE edad = '20'"
sql.execute(query)
myDB.commit()
myDB.close() /*Cerrando conexion a BD**/  


12. Borrar tabla
sql = myDB.cursor()
/*
sql = "DROP TABLE IF EXISTS alumnos" */
query ="DROP TABLE alumnos;"
sql.execute(query)
myDB.commit()
myDB.close() /*Cerrando conexion a BD**/  


13. Borra Base de Datos

sql = myDB.cursor()
/*DROP DATABASE ejemplo;*/
query ="DROP DATABASE IF EXISTS ejemplo;"
sql.execute(query)
myDB.commit()
myDB.close() /*Cerrando conexion a BD**/  

👉 Nota: 😀 
De esta forma existen muchas consultas o SQL
que se pueden ejecutar desde Python facilmente.

😀 NO OLVIDES SUSCRIBIRTE 👊
