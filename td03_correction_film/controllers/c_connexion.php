<?php

//appel de l'alerte
require_once (PATH_VIEWS . 'alert' . '.php');

if (isset($_POST['valider'])){
    if($_POST['pseudo']==ADMIN&&$_POST['pwd']==PASSWORD){
        $erreur_co = false;
        $message_erreur = CONNEXION_VALIDE;
        $_SESSION['logged'] = true;
    }
    if($_POST['pseudo']!=ADMIN){
        $erreur_co = true;
        $message_erreur = BAD_PSEUDO;
    }
    else 
    if($_POST['pwd']!=PASSWORD){
        $erreur_co = true;
        $message_erreur = BAD_MDP;
    }

}

// appel de la vue
require_once (PATH_VIEWS . $page . '.php');
