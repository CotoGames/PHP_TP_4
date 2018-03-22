<?php
require_once (PATH_MODELS . 'FilmDAO.php');
require_once (PATH_MODELS . 'GenreDAO.php');

// Traitement du formulaire
if (isset($_POST['genre'])) {
    if (is_numeric($_POST['genre'])) {
        $genId = (int) $_POST['genre'];
    }
}

// Appel du modèle
// Pour les films et les genres
$genDAO = new GenreDAO(DEBUG);
$genres = $genDAO->getAll();
$FilmDAO = new FilmDAO(DEBUG);
if (isset($genId) and $genId != 0) {
    $selectedGen = $genDAO->getById($genId);
}


// appel de la vue
require_once (PATH_VIEWS.'addfilm.php');
