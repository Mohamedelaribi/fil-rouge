
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="homePage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">  
    <title>North Travel</title>

</head>
<body>
    <!-- navbar star -->
        <nav class="header navBar" id="navBar">     
            
            <a  class="linkLogo" href="homePage.html"><img class="logo" src="images/Spot.png" alt=""></a>
        
                    <div id="divCategory">
                        <a class="category" id="category" href="homePage.html">Home</a>
                        <a class="category" id="category" href="AboutUs.html">About Us</a>
                        <a class="category" id="category" href="Gallery.html">Gallery</a>
                    </div>
                    
                    <div class="divNavBar" id="divNavBar">   
                            <a class="favoris" id="favoris" href="favorit.php">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="currentColor" class="bi bi-heart " viewBox="0 0 16 16">
                                <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                            </svg>
                        <button type="submit" name="login" class="login" id="login">
                            <a href="login.php" id="loginLink">login</a>
                        </button>   
                    </div>
        </nav>
        <!-- navBar end -->

        <!-- main star -->
      

        <section class="section" id="section">
        </section>            
        <h1 class="category" id="category">Catégorie</h1>
        <main class="mainCategory" id="mainCategory">

<?php include ('connection.php');
$selectCategory = $connect->prepare('SELECT * FROM catégorie');
$selectCategory->execute();
foreach ($selectCategory as $result){
    echo'

                <div class="card-catégorie">
                   <a href="publication.php?catégorie='.$result['IdCatégorie'].'"> <img class="imagesCatégorie" src= images/'. $result["imageCatégorie"].'></a>
                    <h2 class="card-title">'.$result["NomCatégorie"].'</h2>

                </div>
        
        </form>';
}
            ?>
    </main>

    <main class="aboutTanger">
        <h1>About Tanger</h1>
        <h2 class="">Tanger La Porte De Maroc</h2>
        <img src="images/Rectangle 18.png" class="imageAboutTanger">
        <p class="tangerLaporte">Tanger, la porte du Maroc, port important, et véritable héritage culturel. La cité blanche qui s’élève sur le détroit de Gibraltar, entre Atlantique et Méditerranée, compte une agglomération de près d’un million d’habitants ce qui en fait la 4ème ville du Maroc. Tanger est une ville cosmopolite, qui a connu son âge d’or, ses heures sombres, et qui renait pour nous faire découvrir cet héritage et les recoins cachés de sa cité.</p>
        <img src="images/Rectangle 48.png" class="imageAboutTanger2">
        <p class="tangerLaPorte2">Elle est dans mes rêves lointains symbole d’une autre Méditerranée, avec des collines d’orangers à flanc de mer, une ville cosmopolite, où on prend le temps de vivre. Et si l’image n’est pas exactement la même, la surprise est de taille.
        Promenez-vous dans Tanger la Blanca. Promenez-vous dans les rues bordées de maisons blanchies à la chaux et, comme Matisse avant, comme Delacroix aussi, laissez-vous emporter par l'air rêveur qui se dégage de la ville. Perdez-vous dans les ruelles du grand « Socco » ; Au pied des hautes murailles de la "Kasbah", admirez la forteresse qui domine la médina. Non loin de là se trouve le "Palais du Sultan" aujourd'hui dédié aux arts du Maroc. Tanger a aussi des influences espagnoles avec une arène qui s'élève dans la "Plaza de Torros", sans oublier le théâtre "Cervantes" construit en 1913.
        </p>
        
    </main>
</body>
</html>