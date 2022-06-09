CREATE TABLE Catégorie(
    IdCatégorie int(10) AUTO_INCREMENT,
    NomCatégorie varchar(100),
    PRIMARY KEY(IdCatégorie)
);
    
CREATE TABLE Publication(
    Id int(10) AUTO_INCREMENT,
    IdCatégorie int(10),
    libelle varchar(100),
    Description varchar(900),
    Images varchar(500),
    PRIMARY KEY(Id),
    FOREIGN KEY(idCatégorie) REFERENCES Catégorie(IdCatégorie)
);
    
    
CREATE TABLE visiteur(
    IdVisiteur int(10) AUTO_INCREMENT,
    Nom varchar(50),
    Prénom varchar(50),
    Email varchar(500),
    MotDePasse varchar(500),
    PRIMARY KEY(IdVisiteur)
);
    
    
 CREATE TABLE Review(
     IdReview int(10) AUTO_INCREMENT,
     Id int(10),
     IdVisiteur int(10),
     Note int(5),
     Commentaire varchar(500),
     PRIMARY KEY(IdReview),
     FOREIGN KEY(Id)REFERENCES Publication(Id),
     FOREIGN KEY(IdVisiteur) REFERENCES Visiteur(IdVisiteur),
     CONSTRAINT PRIMARY KEY(Id,IdVisiteur)
);
     
CREATE TABLE Favori(
    Id int(10),
    IdVisiteur int(10),
    DateAjout date,
    CONSTRAINT PRIMARY KEY (Id,IdVisiteur),
    CONSTRAINT FOREIGN KEY (Id,IdVisiteur)
);

