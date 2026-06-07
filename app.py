from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <h1>Hello from my Linux VM!</h1>
    <p>Python web application deployed successfully.</p>
    """

app.run(host='0.0.0.0', port=80) 