CREATE TABLE Utilisateur (
	mail VARCHAR PRIMARY KEY, 
	password VARCHAR(8),
	prenom VARCHAR(25) NOT NULL,
	nom VARCHAR(25) NOT NULL,
	UT VARCHAR(20) NOT NULL,
	tel varchar(10)
);


CREATE TABLE Etudiant (
	user VARCHAR, 
	semestre VARCHAR NOT NULL,
	branche VARCHAR NOT NULL,
	FOREIGN KEY(user) REFERENCES Utilisateur(mail)
);

CREATE TABLE Professeur(
	user VARCHAR REFERENCES Utilisateur(mail),
	domaine VARCHAR NOT NULL
);

CREATE TABLE Administration(
	user VARCHAR REFERENCES Utilisateur(mail),
	poste VARCHAR NOT NULL
);

CREATE TABLE Theme(
	intituleTheme VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Categories(
	intituleCat VARCHAR(50) PRIMARY KEY,
	theme VARCHAR(50) REFERENCES Theme(intituleTheme)
);

CREATE TABLE Annonce(
	id integer(15) PRIMARY KEY,
	prix integer(5) NOT NULL,
	titre VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	dateAjout DATE NOT NULL,
	valide BOOLEAN NOT NULL,
	user VARCHAR REFERENCES Utilisateur(mail),
	cat VARCHAR(50) REFERENCES Categories(intituleCat) NOT NULL
);

CREATE TABLE Photo (
	annonce INTEGER(15) REFERENCES Annonce(id),
	direcory VARCHAR NOT NULL
);

CREATE TABLE Commentaire (
	id INTEGER(15) PRIMARY KEY,
	objet VARCHAR(50) NOT NULL, 
	texte VARCHAR NOT NULL, 
	dateCration DATE NOT NULL,
	annonce VARCHAR REFERENCES Annonce(id),
	user VARCHAR Utilisateur(mail),
	reponse INTEGER REFERENCES Commentaire(id)
);



