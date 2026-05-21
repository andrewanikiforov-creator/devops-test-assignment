#!/bin/sh
pip install flask &&
cat > /app/app.py << 'PY' &&
python /app/app.py
PY
from flask import Flask, request, jsonify
app = Flask(__name__)
@app.route('/')
def hello():
    return jsonify(dict(request.headers))
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
PY