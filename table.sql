CREATE TABLE Utilisateur (
	mail VARCHAR PRIMARY KEY, 
	password VARCHAR(8),
	prenom VARCHAR(25) NOT NULL,
	nom VARCHAR(25) NOT NULL,
	UT VARCHAR(20) NOT NULL,
	tel varchar(10)
);



