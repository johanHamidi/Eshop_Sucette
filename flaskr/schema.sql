-- Initialize the database.
-- Drop any existing data and create empty tables.

DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS PRODUIT;
DROP TABLE IF EXISTS TYPEPRODUIT;

CREATE TABLE USER (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username VARCHAR UNIQUE NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE PRODUIT (
  id_produit INTEGER PRIMARY KEY AUTOINCREMENT,
  libelle_produit VARCHAR NOT NULL,
  price FLOAT NOT NULL,
  qte_produit INTEGER NOT NULL,
  img TEXT,
  id_type_produit VARCHAR NOT NULL,
  CONSTRAINT fk_produit FOREIGN KEY(id_type_produit)
  REFERENCES typeProduit(id_type_produit)
);


CREATE TABLE TYPEPRODUIT (
  id_type_produit INTEGER PRIMARY KEY AUTOINCREMENT,
  libelle_type VARCHAR UNIQUE NOT NULL
);


INSERT INTO user(username,password)
VALUES
("Shaïnee","123456"),
("LEJHO","0000")
;

INSERT INTO TYPEPRODUIT(libelle_type)
VALUES
("XL"),
("S"),
("M")
;

INSERT INTO produit(libelle_produit,price,qte_produit,img,id_type_produit)
VALUES
("Coca",8.2,20,"images/product1.jpg",1),
("Orangina",6.4,12,"images/product2.jpg",2),
("Tropical",3.5,17,"images/product3.jpg",3)
;
