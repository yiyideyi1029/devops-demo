from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def hello():
    hostname = socket.gethostname()
    return f"Hello DevOps! Version: v1.0 | Container ID: {hostname}\n"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
