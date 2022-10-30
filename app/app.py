from flask import Flask, render_template, url_for
import mysql.connector #Importando modulo MySQL connector


app = Flask(__name__)


@app.route("/")
def index():
    myDB = mysql.connector.connect(
        host ="localhost",
        user ="root",
        password ="",
        database = "ejemplo_youtube"
        )

    if myDB:
        cursor = myDB.cursor(dictionary=True)
        cursor.execute("select * from trabajadores WHERE sueldo>'350000'")
        registros = cursor.fetchall()
        
        return render_template('index.html', data = registros)
    else:
        return ("Error en la conexión a BD")



if __name__ == "__main__":
    app.run(debug=True, port=8000)