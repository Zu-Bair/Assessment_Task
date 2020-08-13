from flask import Flask, request, jsonify
from Rating import addRate
app = Flask(__name__)
@app.route('/rating/add',methods=["POST"])
def addRating():
 eventId = request.form['eventId'] 
 userId = request.form['userId']
 rating = request.form['rating']
 print(userId," ",eventId," ",rating)
 status = addRate(userId, eventId, rating)
 
 return status
# Running the server in localhost:5000 
if __name__ == '__main__':
 app.run(debug=True, host='0.0.0.0', port=5000)