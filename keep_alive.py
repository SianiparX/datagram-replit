from flask import Flask
import threading

app = Flask(__name__)
@app.route('/')
def home(): return "✅ Datagram is alive!", 200

def run(): app.run(host='0.0.0.0', port=8080)
def keep_alive():
    t = threading.Thread(target=run)
    t.daemon = True
    t.start()
