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
<?php
if(isset($erreur_co)){
	if($erreur_co ==true){
		alert("danger",$message_erreur);
	} else {
		alert("success",$message_erreur);
	}
}
?>

<!--  Début de la page -->

<!-- Formulaire -->
<?php 
if (!isset($_SESSION['logged'])){
?>
<form method="POST" action=<?php PATH_VIEWS.$page.'php'?>>
	<h1><?= MENU_CONNEXION ?></h1>
	<b>Nom d'utilisateur :</b> <input type="text" name="pseudo" placeholder="Username"/>
	<b>Mot de passe :</b> <input type="password" name="pwd" placeholder="Password"/>
	<br/>
	<input type="submit" name="valider" value="<?= SUBMIT ?>">
</form>
<?php }
?>
<!--  Fin de la page --> <!--  Pied de page -->
<?php

require_once (PATH_VIEWS . 'footer.php'); 