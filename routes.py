from flask import render_template, url_for
from . import app, models


@app.route('/tous_produits')
def produits():
    liste_produits = models.vue_produits_categories.query.all()
    return render_template('tous_produits.html',title='Tous les produits',liste_prod = liste_produits)

@app.route('/')
@app.route('/accueil')
def accueil():
    return render_template('accueil.html',title='Bienvenue')
@app.route('/nos_pc')
def nos_pc():
    liste_pc = models.pc.query.all()
    return render_template("pc.html", liste_pc=liste_pc, title='Nos pc')



@app.route('/type_pc')
def type_pc():
    liste_pc_type = models.pc.query.all()
    types_uniques = list(set(pc.type_pc for pc in liste_pc_type))
    return render_template('type_pc.html', liste_pc_type=types_uniques, title='Types de pc')

@app.route('/choix_type_pc/<type_pc>')
def choix_type_pc(type_pc):
    pcs = models.pc.query.filter_by(type_pc=type_pc).all()
    return render_template('choix_type_pc.html', pcs=pcs, type_pc=type_pc)


