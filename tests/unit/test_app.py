import pytest
from app import app

@pytest.fixture
def client():
    """Configures the Flask app for testing and provides a test client."""
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_index_route_status_code(client):
    """Tests if the '/' route returns a 200 OK status code."""
    response = client.get('/')
    assert response.status_code == 200
    assert b"Welcome to ACEest Fitness Gym" in response.data