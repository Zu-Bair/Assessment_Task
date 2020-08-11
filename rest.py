import pymysql
from app import app
from flask import jsonify, request, session, flash
from werkzeug.security import check_password_hash, generate_password_hash
from db_config import mysql

@app.route('/')
def home():
	if 'username' in session:
		username = session['username']
		return jsonify({'message' : 'You are already logged in', 'username' : username})
	else:
		resp = jsonify({'message' : 'Unauthorized'})
		resp.status_code = 401
		return resp

@app.route('/login', methods=['POST'])
def login():
	conn = None
	cursor = None
	
	try:
		_json = request.json
		_username = _json['username']
		_password = _json['password']
		
		# validate the received values
		if _username and _password:
			#check user exists			
			conn = mysql.connect()
			cursor = conn.cursor()
			
			sql = "SELECT * FROM user WHERE username=%s"
			sql_where = (_username,)
			
			cursor.execute(sql, sql_where)
			row = cursor.fetchone()
			
			if row:
				if check_password_hash(row[3], _password):
					session['username'] = row[1]
					#cursor.close()
					#conn.close()
					return jsonify({'message' : 'You are logged in successfully'})
				else:
					resp = jsonify({'message' : 'Bad Request - invalid password'})
					resp.status_code = 400
					return resp
		else:
			resp = jsonify({'message' : 'Bad Request - invalid credendtials'})
			resp.status_code = 400
			return resp

	except Exception as e:
		print(e)

	finally:
		if cursor and conn:
			cursor.close()
			conn.close()
		
@app.route('/logout')
def logout():
	if 'username' in session:
		session.pop('username', None)
	return jsonify({'message' : 'You successfully logged out'})


@app.route('/add', methods=['POST'])
def add_user():
	try:
		_json = request.json
		_name = _json['name']
		_email = _json['email']
		_password = _json['pwd']
		# validate the received values
		if _name and _email and _password and request.method == 'POST':
			#do not save password as a plain text
			_hashed_password = generate_password_hash(_password)
			# save edits
			sql = "INSERT INTO user(username, useremail, password) VALUES(%s, %s, %s)"
			data = (_name, _email, _hashed_password,)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sql, data)
			conn.commit()
			resp = jsonify('User added successfully!')
			resp.status_code = 200
			return resp
		else:
			return not_found()
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()





@app.route('/insert', methods=['POST'])
def add_item():
	try:
		_itemname = request.form['item_name']
		_description = request.form['description']
		_location = request.form['location']
		_createdat = request.form['created_at']
		# _picname = request.form['picname']
		_files=request.files.getlist('pic_name[]')
		# validate the received values
		if _itemname and _description and _location and _createdat and request.method == 'POST':
			
			# save edits
			sql = "INSERT INTO item(name, description, location, created_at) VALUES(%s, %s, %s, %s)"
			data = (_itemname, _description, _location,_createdat)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sql, data)
			_last_id=cursor.lastrowid

			sql = "INSERT INTO item_pic(item_id, pic_name) VALUES(%s, %s)"
			for i in _files:
				data = (_last_id,i.filename)
				cursor.execute(sql, data)
			conn.commit()

			resp = jsonify('Item added successfully!')
			resp.status_code = 200
			return resp
		else:
			return not_found()
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()


@app.route('/delete/<int:id>',methods=['GET'])
def delete_item(id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor()
		cursor.execute("DELETE FROM item WHERE id=%s", (id,))
		cursor.execute("DELETE FROM item_pic WHERE item_id=%s", (id,))

		conn.commit()
		resp = jsonify('User deleted successfully!')
		resp.status_code = 200
		return resp
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()



@app.route('/update', methods=['POST'])
def update_item():
	try:
		_id = request.form['id']
		_itemname = request.form['item_name']
		_description = request.form['description']
		_location = request.form['location']
		_createdat = request.form['created_at']
		_files=request.files.getlist('pic_name[]')
		
		# _picname = request.form['picname']
		#_files=request.files.getlist('pic_name[]')		
		# validate the received values
		if _itemname and _description and _location and _createdat and request.method == 'POST':
			# save edits
			sql = "UPDATE item SET name=%s, description=%s, location=%s, created_at=%s WHERE id=%s"
			data = (_itemname, _description, _location, _createdat,_id,)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sql, data)
			# sql = "DELETE FROM item_pic WHERE item_id=%s", (id,)
			cursor.execute("DELETE FROM item_pic WHERE item_id=%s", (_id,))
			sql = "INSERT INTO item_pic(item_id, pic_name) VALUES(%s, %s)"
			for i in _files:
				data = (_id,i.filename)
				cursor.execute(sql, data)
			conn.commit()
			resp = jsonify('User updated successfully!')
			resp.status_code = 200
			return resp
		else:
			return not_found()
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()



@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Not Found: ' + request.url,
    }
    resp = jsonify(message)
    resp.status_code = 404

    return resp
		
if __name__ == "__main__":
    app.run()