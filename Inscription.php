<html xmlns="http://www.w3.org/1999/xhtml" >

<body> 

<head>
		<title> Confirmation inscription </title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
	
<body>
	<h1> <b> Confirmation de votre inscription </b> </h1>
	
	<?php
	
		/* Définitions des variables */
		$UT = $_POST["UT"];
		$statut = $_POST["statut"];
		$nom = $_POST["nom"];
		$prenom = $_POST["prenom"];
		$tel = $_POST["tel"];
		$mail = $_POST["mail"];
		$mdp = $_POST["mdp"];
		$branche = $_POST["branche"];
		$semestre = $_POST["semestre"];
		$domaine = $_POST["domaine"];
		$poste = $_POST["poste"];



	
		/* Connexion à la base de données */
		$connexion = new PDO('pgsql:host=tuxa.sme.utc;port=5432;dbname=dbnf17p124', 'nf17p124', 'rj2JOYLv');	

		/** Préparation et exécution de la requête **/
		$sql = "requête SQL here";
		$resultset = $connexion->prepare($sql);
		/* $resultset->bindParam(1, ...);*/
		$resultset->execute();            
        
		while ($row = $resultset->fetch(PDO::FETCH_ASSOC)) {
		echo "Connexion réussie !";
		}

		/** Déconnexion **/
		$connexion=null;    
	?>
	
	

	<h2> <b> Maintenant vous pouvez : </b> </h2>
	<ul>
 		<li> 	<a href="Poster_annonce.html"> Poster une annonce </a> </li>
 		<li> 	<a href="Consulter_annonce.html"> Consulter les petites annonces </a> </li>
 		<li> 	<a href="Gerer_annonce.html"> Gérer vos annonces </a> </li>
	</ul>



</body>

</html>
