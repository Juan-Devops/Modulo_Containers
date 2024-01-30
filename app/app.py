from flask import Flask, jsonify
import mysql.connector


app = Flask(__name__)


def dados_hq():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'quadrinhos'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT * FROM hq')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


@app.route('/')
def index():
    return jsonify({'Personagens de Quadrinhos': dados_hq()})


if __name__ == '__main__':
    app.run(host='0.0.0.0')