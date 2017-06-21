<html xmlns="http://www.w3.org/1999/xhtml" >

<body> 

<head>
		<title> Récapitulatif annonce </title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
	
<body>
	<h1> <b> Récapitulatif de votre nouvelle annonce </b> </h1>
	
	<?php
	
		/* Définitions des variables */
		$cat = $_POST["cat"];
		$title = $_POST["title"];
		$desc = $_POST["desc"];
		$price = $_POST["price"];
		$tof1 = $_POST["tof1"];
		$tof2 = $_POST["tof2"];
		$tof3 = $_POST["tof3"];





	
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
 		<li> 	<a href="Poster_annonce.html"> Poster une autre annonce </a> </li>
 		<li> 	<a href="Consulter_annonce.html"> Consulter les petites annonces </a> </li>
 		<li> 	<a href="Gerer_annonce.html"> Gérer vos annonces </a> </li>
	</ul>



</body>

</html>
