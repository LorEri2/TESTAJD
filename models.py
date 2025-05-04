from . import app, db
from flask_sqlalchemy import SQLAlchemy

"""class produit(db.Model):
    id_produit = db.Column(db.Integer, primary_key=True)
    nom_produit = db.Column(db.String(100), nullable=True)
    prix_produit = db.Column(db.Float, nullable=False)
    image = db.Column(db.String(100), nullable=True)
    description = db.Column(db.String(100), nullable=True)
    id_cat = db.Column(db.Integer, db.ForeignKey('id_cat'), nullable=False)

    def __repr__(self):
        return '<Produit %r>' % self.id_produit

class vue_produits_categories(db.Model):
    id_produit = db.Column(db.Integer, primary_key=True)  #obligation d'un clé primaire
    id_cat = db.Column(db.Integer, db.ForeignKey('id_cat'), nullable=True)
    nom_produit = db.Column(db.String(100), nullable=True)
    prix_produit = db.Column(db.Float, nullable=False)
    image = db.Column(db.String(100), nullable=False,default='photo_pc.jpg')
    description = db.Column(db.String(100), nullable=True)
    nom_categorie = db.Column(db.Integer, db.ForeignKey('id_cat'), nullable=False)

    def __repr__(self):
        return '<Vue Produits Categories %r>' % self.id_cat"""

class pc(db.Model):
    id_pc = db.Column(db.Integer, primary_key=True)
    nom_pc = db.Column(db.String(100), nullable=True)
    prix_pc = db.Column(db.Float, nullable=False)
    photo_pc = db.Column(db.String(100), nullable=True)
    type_pc = db.Column(db.String(100), nullable=True)



    def __repr__(self):
        return '<PC %r>' % self.id_pc

