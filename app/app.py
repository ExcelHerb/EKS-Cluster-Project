from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({'message': 'Hey There!'},{'version': '1.0'})

@app.route('/health')
def health():
    return jsonify({'status': 'healthy'}),200

@app.route('/api/status')
def api_status():
    return jsonify({'environment': 'Amazon EKS'},{'application':'eks_project'},{'status':'running'})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)