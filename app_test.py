import pytest
import json
from app import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

class TestPlanetsAPI:
    
    def test_fetch_mercury(self, client):
        payload = {"id": 1}
        response = client.post('/planet', 
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 1
        assert data['name'] == 'Mercury'
    
    def test_fetch_venus(self, client):
        payload = {"id": 2}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 2
        assert data['name'] == 'Venus'
    
    def test_fetch_earth(self, client):
        payload = {"id": 3}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 3
        assert data['name'] == 'Earth'
    
    def test_fetch_mars(self, client):
        payload = {"id": 4}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 4
        assert data['name'] == 'Mars'
    
    def test_fetch_jupiter(self, client):
        payload = {"id": 5}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 5
        assert data['name'] == 'Jupiter'
    
    def test_fetch_saturn(self, client):
        payload = {"id": 6}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 6
        assert data['name'] == 'Saturn'
    
    def test_fetch_uranus(self, client):
        payload = {"id": 7}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 7
        assert data['name'] == 'Uranus'
    
    def test_fetch_neptune(self, client):
        payload = {"id": 8}
        response = client.post('/planet',
                             data=json.dumps(payload),
                             content_type='application/json')
        
        assert response.status_code == 200
        data = response.get_json()
        assert data['id'] == 8
        assert data['name'] == 'Neptune'

    # def test_fetch_pluto(self, client):
    #     payload = {"id": 9}
    #     response = client.post('/planet',
    #                          data=json.dumps(payload),
    #                          content_type='application/json')
    #     
    #     assert response.status_code == 200
    #     data = response.get_json()
    #     assert data['id'] == 9
    #     assert data['name'] == 'Sun'

class TestOtherEndpoints:
    
    def test_fetch_os_details(self, client):
        response = client.get('/os')
        assert response.status_code == 200
    
    def test_liveness_endpoint(self, client):
        response = client.get('/live')
        assert response.status_code == 200
        data = response.get_json()
        assert data['status'] == 'live'
    
    def test_readiness_endpoint(self, client):
        response = client.get('/ready')
        assert response.status_code == 200
        data = response.get_json()
        assert data['status'] == 'ready'