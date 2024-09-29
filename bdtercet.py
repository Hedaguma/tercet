pip install psycopg2

import psycopg2
import random

# Configuración de la conexión
config = {
    'dbname': 'tercet',
    'user': 'postgres',          # Cambia esto por tu usuario de PostgreSQL
    'password': '',   # Cambia esto por tu contraseña de PostgreSQL
    'host': 'localhost',           # Cambia esto si estás usando un host diferente
    'port': '5432'                 # Cambia esto si tu PostgreSQL está en otro puerto
}

# Conexión a la base de datos
try:
    # Establecer conexión
    conn = psycopg2.connect(**config)
    print("Conexión exitosa a la base de datos.")

    # Crear un cursor
    cursor = conn.cursor()

    # Consulta para contar el número de filas
    cursor.execute("SELECT COUNT(*) FROM bdmedic.medicos")
    total_filas = cursor.fetchone()[0]

    # Elegir un índice aleatorio
    indice_aleatorio = random.randint(0, total_filas - 1)

    # Consulta para obtener la fila al azar
    cursor.execute(f"SELECT nombre, a_paterno, a_materno, clinica, especialidad FROM bdmedic.medicos OFFSET {indice_aleatorio} LIMIT 1")
    fila_aleatoria = cursor.fetchone()

    # Mostrar la fila aleatoria
    if fila_aleatoria:
        print(f"Nombre: {fila_aleatoria[0]}, Apellido Paterno: {fila_aleatoria[1]}, Apellido Materno: {fila_aleatoria[2]}, Clínica: {fila_aleatoria[3]}, Especialidad: {fila_aleatoria[4]}")
    else:
        print("No se encontraron registros.")

except Exception as e:
    print(f"Ocurrió un error: {e}")

finally:
    # Cerrar cursor y conexión
    if cursor:
        cursor.close()
    if conn:
        conn.close()
        print("Conexión cerrada.")
