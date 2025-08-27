import os
import socket
from flask import Flask, request, jsonify, send_from_directory
from flask_cors import CORS
from pymongo import MongoClient
from prometheus_client import CollectorRegistry, generate_latest, CONTENT_TYPE_LATEST, multiprocess, REGISTRY
import logging

app = Flask(__name__)
CORS(app)

# MongoDB connection
try:
    mongo_uri = os.environ.get('MONGO_URI')
    mongo_username = os.environ.get('MONGO_USERNAME')
    mongo_password = os.environ.get('MONGO_PASSWORD')
    
    client = MongoClient(
        mongo_uri,
        username=mongo_username,
        password=mongo_password
    )
    db = client.get_default_database()
    planets_collection = db.planets
    
    # Test connection
    client.admin.command('ping')
    print("MongoDB Connection Successful")
except Exception as err:
    print(f"error!! {err}")

@app.route('/planet', methods=['POST'])
def get_planet():
    try:
        planet_id = request.json.get('id')
        planet_data = planets_collection.find_one({'id': planet_id}, {'_id': 0})
        
        if planet_data is None:
            return jsonify({"error": "Ooops, We only have 9 planets and a sun. Select a number from 0 - 9"}), 404
        
        return jsonify(planet_data)
        
    except Exception as err:
        return "Error in Planet Data", 500

# Serve index.html
@app.route('/')
def index():
    return send_from_directory('.', 'index.html')

@app.route('/os')
def get_os_info():
    return jsonify({
        "os": socket.gethostname(),
        "env": os.environ.get('FLASK_ENV', 'development')
    })

@app.route('/live')
def liveness():
    return jsonify({
        "status": "live"
    })

@app.route('/ready')
def readiness():
    return jsonify({
        "status": "ready"
    })

@app.route('/metrics')
def metrics():
    registry = REGISTRY
    data = generate_latest(registry)
    return data, 200, {'Content-Type': CONTENT_TYPE_LATEST}

if __name__ == '__main__':
    print("Server successfully running on port - 3000")
    app.run(host='0.0.0.0', port=3000, debug=False)
