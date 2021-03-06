CREATE TABLE Utilisateur (
	mail VARCHAR PRIMARY KEY, 
	password VARCHAR(8),
	prenom VARCHAR(25) NOT NULL,
	nom VARCHAR(25) NOT NULL,
	UT VARCHAR(20) NOT NULL,
<<<<<<< HEAD
	tel varchar(10)
=======
	tel varchar(10),
	CHECK (UT in ('Compiègne', 'Troyes', 'Belfort-Montbéliard'))
>>>>>>> ddc3f6a72ef00b03a789f45b49f4c88c083f87bc
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
<<<<<<< HEAD
	cat VARCHAR(50) REFERENCES Categories(intituleCat) NOT NULL
=======
	cat VARCHAR(50) REFERENCES Categories(intituleCat)
>>>>>>> ddc3f6a72ef00b03a789f45b49f4c88c083f87bc
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


<<<<<<< HEAD
=======
INSERT INTO Utilisateur VALUES 
('hugo-chabin@laposte.net', 'password1', 'Hugo', 'Chabin', 'Compiegne', '0629847323'),
('guillaume-le-fur@gmail.com', 'password2', 'guillaume', 'Le fur', 'Compiegne', '0629564156'),
('arielle.tinchon@gmail.com', 'password3', 'Arielle', 'Tinchon', 'Compiegne', '0606060606');



>>>>>>> ddc3f6a72ef00b03a789f45b49f4c88c083f87bc

