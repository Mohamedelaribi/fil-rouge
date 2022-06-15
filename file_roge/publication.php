<?php
include "navbar.php";
include "connection.php";
$getcatégorie=$_GET['catégorie'];
$selectData= $connect->prepare("SELECT *   FROM publication INNER JOIN images ON publication.id=images.id 
where idCatégorie ='$getcatégorie' ");
$selectData->execute();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="publication.css">
    <title>Document</title>DX
</head>
<body>
    
    <section class="section" id="section"></section>
        <h1 class="bienvenueATanger">Bienvenue à Tanger.</h1>
           <p class="bienvenueATanger">nous vous aidons à trouver un bon endroit pour passer votre nuit.
            </p>
            <?php
             foreach($selectData as $result){
             echo'
            <div class="publication">
                <img src="images/'.$result["image1"].'" class="leMirage2">
                <button name="MoreInformation" class="MoreInformation">More Information</button>
                <h1 class="lebille">'.$result["libelle"].'</h1>
                <h2 class="prix"> de '.$result["Prix"].' DH</h2>
                <p class="adresse">'.$result["adresse"].'</p>
                <a class="lien" href="'.$result["website"].'">'.$result["website"].'</a>


            </div>';
             }?>
</body>
</html>