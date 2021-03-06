<?php
require_once (PATH_MODELS . 'GenreDAO.php');
require_once (PATH_MODELS . 'FilmDAO.php');

$filmDAO = new FilmDAO(DEBUG);

//Zone message d'alerte
require_once(PATH_VIEWS."alert.php");

// Traitement du formulaire
if (isset($_POST['genre'])) {
    if (is_numeric($_POST['genre'])) {
        $genId = (int) $_POST['genre'];
    }
}

//Vérification du formulaire
if (isset($_POST['envoyer'])){
    if (!preg_match('#[a-z]#i', $_POST['titre'])){
       $erreur_formulaire = true;                                               //Crée une variable erreur_formulaire
       $message_erreur = "Le titre doit comporter au moins un caractère";       //Définit le message d'erreur
    } else if (!preg_match('#[a-z]#i', $_POST['resum'])){
       $erreur_formulaire = true;                                               //Crée une variable erreur_formulaire
       $message_erreur = "Le résumé doit comporter au moins un caractère";      //Définit le message d'erreur                  
    } else if ($_FILES['poster']==null) {
       $erreur_formulaire = true;                                               //Crée une variable erreur_formulaire
       $message_erreur = "Aucune affiche séléctionée";                          //Définit le message d'erreur
    } else if($_FILES['poster']['type']!="image/gif" &&                         //Si le type n'est pas une image ou un gif
            $_FILES['poster']['type']!="image/png" && 
            $_FILES['poster']['type']!="image/jpeg" && 
            $_FILES['poster']['type']!="image/jpg"){
        $erreur_formulaire = true;
        $message_erreur = "Merci d'upload une image ou un GIF";
    } else if($_FILES['poster']['size']>100000){
        $erreur_formulaire = true;
        $message_erreur = "Fichier image trop lourd";
    } else {
		$filmDAO->insererFilm($_POST['titre'], $_POST['resum'], $_POST['IDgenre']);
		echo 'oui';	
    }
}


// Appel du modèle
// Pour les films et les genres
$genDAO = new GenreDAO(DEBUG);
$genres = $genDAO->getEveryGenre();
if (isset($genId) and $genId != 0) {
    $selectedGen = $genDAO->getById($genId);
}


// appel de la vue
require_once (PATH_VIEWS.'addfilm.php');
