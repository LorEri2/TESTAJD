from flask import Flask
from flask_sqlalchemy import SQLAlchemy
app = Flask(__name__)
#app.config['SQLALCHEMY_DATABASE_URI'] = 'jdbc:postgresql://localhost:5432/flask2025'
app.config["SQLALCHEMY_DATABASE_URI"] = 'postgresql://anonyme:anonyme@localhost:5432/ProjetDLPC'

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY']='30b34c8f940bc81d6c6d162064acca81'

db = SQLAlchemy(app)



from . import routes