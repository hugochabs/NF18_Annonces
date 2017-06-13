CREATE VIEW vueEtudiant AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Etudiant E ON
U.mail = E.mail;

CREATE VIEW vueProf AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Professeur P ON
U.mail = P.mail;


CREATE VIEW vueAdministration AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Administration A ON
U.mail = A.mail;


CREATE VIEW vueEtudiantAdmin AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Etudiant E ON
U.mail = E.mail;

CREATE VIEW vueProfAdmin AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Professeur P ON
U.mail = P.mail;


CREATE VIEW vueAdministrationAdmin AS
SELECT mail, prenom, nom, tel, UT, semestre, branche FROM
Utilisateur U INNER JOIN Administration A ON
U.mail = A.mail;


CREATE VIEW CompiCityMaggle AS
SELECT * FROM
Annonce A INNER JOIN Utilisateur U ON
A.user = U.mail
WHERE U.UT = 'Compiegne';

CREATE VIEW TroyesCityMaggle AS
SELECT * FROM
Annonce A INNER JOIN Utilisateur U ON
A.user = U.mail
WHERE U.UT = 'Troyes';

CREATE VIEW BelfortCityMaggle AS
SELECT * FROM
Annonce A INNER JOIN Utilisateur U ON
A.user = U.mail
WHERE U.UT = 'Belfort-Montbelliard';


CREATE USER Admin WITH PASSWORD = 'admin';
GRANT ALL PRVILEGES ON * TO Admin [WITH GRANT OPTION];


CREATE USER ? WITH PASSWORD = ?;
GRANT SELECT ON Annonces, Photo, Commentaire TO ?;
GRANT INSERT ON Annonces TO ?;
