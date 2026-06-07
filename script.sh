#!/bin/bash

sudo apt install python3 python3-pip python3-venv -y

mkdir -p ~/mywebapp

cd ~/mywebapp

python3 -m venv venv

source venv/bin/activate

pip install flask

cat << EOF > app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <h1>Hello from my Linux VM!</h1>
    <p>Python web application deployed successfully.</p>
    """

app.run(host='0.0.0.0', port=80)
EOF


echo "Setup Complete!"
echo "To start the application:"
echo "cd ~/mywebapp"
echo "source venv/bin/activate"
echo "sudo venv/bin/python app.py"