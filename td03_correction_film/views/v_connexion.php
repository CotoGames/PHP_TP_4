<?php
/*
 * DS PHP
 * Vue page index - page d'accueil
 *
 * Copyright 2016, Eric Dufour
 * http://techfacile.fr
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 *
 */
// En tête de page
?>
<?php require_once(PATH_VIEWS.'header.php');?>

<!--  Zone message d'alerte -->
<?php require_once(PATH_VIEWS.'alert.php');?>


<!--  Début de la page -->

<!-- Formulaire -->
<form method="POST" action="connexion.php">
	<h1><?= MENU_CONNEXION ?></h1>
	<b>Nom d'utilisateur :</b> <input type="text" name="pseudo" value="Username"/>
	<b>Mot de passe :</b> <input type="password" name="pwd" value="password"/>