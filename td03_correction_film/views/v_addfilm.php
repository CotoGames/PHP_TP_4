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

<!-- gestion des alertes-->
<?php
if (isset($erreur_formulaire)){
    if($erreur_formulaire == true){
        alert("danger",$message_erreur);
    } else {
        alert("success",$message_erreur);
    }
} ?>

<form method="POST" action=<?php PATH_VIEWS.$page.'php'?>>
	<div class="label-group">
		<label for="exampleInputFile">Affiche du film :</label>
		<input type="file" name="poster" id="poster" aria-describedby="fileHelp"><br/>
	</div>
	<div class="form-group">
		<label for="Titre du film">Titre du film :</label><br/>
		<input type="text" name="titre" placeholder="Titre du film"/>
	<div class="form-group">
		<br/>
		<label for="Résumé du film">Résumé du film :</label>
		<textarea class="form-control" name="resum" rows="3"></textarea>
	</div>
	<div class="form-group">
		<label for="exampleSelect">Choix du genre :</label>
		<select class="form-control" id="exampleSelect">
		 <?php
    		foreach ($genres as $i) {
        ?>
         	<option value="<?= $i->getId() ?>"
				<?= (isset($genId) and ($genId == $i->getId())) ? "selected" : "" ?>> <?= $i->getLibelle() ?> </option>
  		<?php
    	}
    	?>
		</select>
	</div>
	<div>
		<input type="submit" name="envoyer"/>
	</div>
</form>			

<!--  Fin de la page --> <!--  Pied de page -->
<?php

require_once (PATH_VIEWS . 'footer.php'); 