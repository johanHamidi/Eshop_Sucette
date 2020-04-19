from flask import Blueprint
from flask import flash
from flask import g
from flask import redirect
from flask import render_template
from flask import request
from flask import url_for
from werkzeug.exceptions import abort

from flaskr.db import get_db

bp = Blueprint("eboutique", __name__)


@bp.route("/")
def index():
    db = get_db()
    products = db.execute(
        "SELECT libelle_produit, libelle_type, price, img"
        " FROM produit p"
        " INNER JOIN typeproduit tp ON p.id_produit = tp.id_type_produit"
    ).fetchall()
    return render_template("index.html", products=products)
