
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="homePage.css">
    <title>northtravel</title>
</head>

<?php include "navbar.php";?>

        <!-- main star -->
        
        <main class="mainCategory">
        <h1 class="category" id="category">Catégorie</h1>
        <div class="divCategory" id="divCategory">

                <?php include ('connection.php');
                $selectCategory = $connect->prepare('SELECT * FROM catégorie');
                $selectCategory->execute();
                foreach ($selectCategory as $result){
                    echo'

                                <div class="card-catégorie">
                                <a href="publication.php?catégorie='.$result['IdCatégorie'].'"> <img class="imagesCatégorie" src= images/'. $result["imageCatégorie"].'></a>
                                    <h2 class="card-title">'.$result["NomCatégorie"].'</h2>

                                </div>
                        
                        ';
                }
                            ?>
        </div>
        </main>

    <main class="aboutTanger">
        
        <h1 id="aboutTanger1">About Tanger</h1>
        <h2 class="tangerLaPorteDeMaroc">Tanger La Porte De Maroc</h2>
        <div class="aboutTanger1">
        <img src="images/Rectangle 18.png" class="imageAboutTanger">
        <p class="tangerLaporte">Tanger, la porte du Maroc, port important, et véritable héritage culturel. La cité blanche qui s’élève sur le détroit de Gibraltar, entre Atlantique et Méditerranée, compte une agglomération de près d’un million d’habitants ce qui en fait la 4ème ville du Maroc. Tanger est une ville cosmopolite, qui a connu son âge d’or, ses heures sombres, et qui renait pour nous faire découvrir cet héritage et les recoins cachés de sa cité.</p>
        <img src="images/Rectangle 48.png" class="imageAboutTanger2">
        <p class="tangerLaPorte2">Elle est dans mes rêves lointains symbole d’une autre Méditerranée, avec des collines d’orangers à flanc de mer, une ville cosmopolite, où on prend le temps de vivre. Et si l’image n’est pas exactement la même, la surprise est de taille.
        Promenez-vous dans Tanger la Blanca. Promenez-vous dans les rues bordées de maisons blanchies à la chaux et, comme Matisse avant, comme Delacroix aussi, laissez-vous emporter par l'air rêveur qui se dégage de la ville. Perdez-vous dans les ruelles du grand « Socco » ; Au pied des hautes murailles de la "Kasbah", admirez la forteresse qui domine la médina. Non loin de là se trouve le "Palais du Sultan" aujourd'hui dédié aux arts du Maroc. Tanger a aussi des influences espagnoles avec une arène qui s'élève dans la "Plaza de Torros", sans oublier le théâtre "Cervantes" construit en 1913.
        </p>
        </div>

        <div class="aboutTanger2">
        <h2 class="comentAllerATanger">Comment aller à Tanger ?</h2>
        <div class="allerATanger">
            <p class="comentAller">Si la ville n’est pas des plus touristiques elle attire tout de même l’intérêt de pas mal de visiteurs ! Depuis la France quelques liaisons sont effectuées depuis Paris avec Transavia et Royal Air Maroc. Je sais également que des vols sont opérés par Ryanair depuis l’aéroport de Marseille. Il vous faudra donc soit passer par Paris, ou Casablanca pour vous rendre à Tanger.</p> 
            <img src="images/commentAllerATanger.jpg" class="imgAllerATanger">
        </div>
                
        <h2 class="laMédinaDeTanger">La Médina de Tanger</h2>
        <div class="laMédinaTNG">
            <img src="images/tangermadina1.jpg" class="tanger5">
            <P>Nous voilà à Tanger, arrivés après une circulation tumultueuse, l’odeur de marché au poisson et la découverte de notre quartier Josafat. C’est devant le Grand Socco que se trouve une des entrées de la Médina. Une des rues principales qui amène au Petit Socco où bars d’antan réunissent encore les locaux.<br/>
            Ici l’ambiance est encore différente des autres villes marocaines, sans doute par son côté portuaire, son histoire littéraire, et sa proximité avec la Méditerranée. 
            </P>
        </div>
        

        </div>
        
    </main>
</body>
</html>