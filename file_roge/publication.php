<?php
include "navbar.php";
include "connection.php";
$getcatégorie=$_GET['catégorie'];
$selectData= $connect->prepare("SELECT *  FROM publication    where idCatégorie ='$getcatégorie' ");
$selectData->execute();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="publication.css">
    <title>Document</title>
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
                <img src="images/'.$result["image"].'" class="leMirage2">
                <button name="MoreInformation" class="MoreInformation">More Information</button>
                <h1 class="lebille">'.$result["libelle"].'</h1>
                <h2 class="prix">'.$result["Prix"].' DH</h2>
                <p class="adresse">'.$result["Adresse"].'</p>
                <a class="lien" href="http://www.lemirage.com/">http://www.lemirage.com/</a>


            </div>';
             }?>
</body>
</html>