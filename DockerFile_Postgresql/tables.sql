

DROP TABLE IF EXISTS  Joueur CASCADE;
DROP TABLE IF EXISTS  Question CASCADE;
DROP TABLE IF EXISTS  Scan_Joueur CASCADE;
DROP TABLE IF EXISTS  Question_Joueur CASCADE;
DROP TABLE IF EXISTS  Reponse CASCADE;
DROP Type IF EXISTS  categorie CASCADE;



CREATE TYPE categorie AS ENUM ('collaboration', 'auteur', 'projet', 'quoi');


CREATE TABLE IF NOT EXISTS Joueur  (
   IdJoueur serial PRIMARY KEY,
   Score  INT,
   Temps_test TIMESTAMP,
   level_game INT
);

CREATE TABLE IF NOT EXISTS Reponse  (
   IdReponse serial PRIMARY KEY,
   Description_Reponse VARCHAR (255) 
);
CREATE TABLE IF NOT EXISTS Question  (
   IdQuestion serial PRIMARY KEY,
   Indice VARCHAR (255),
   positionReponse INT NOT NULL,
   description_question VARCHAR (255),
   level_game INT,
   categorie_question categorie, 
   IdReponse serial Not NULL,
   FOREIGN KEY (IdReponse)
      REFERENCES Reponse (IdReponse)
);





CREATE TABLE IF NOT EXISTS Question_joueur  (
   IdQuestion serial NOT NULL ,
   IdJoueur serial NOT NULL ,
    PRIMARY KEY (IdQuestion,   IdJoueur),
   Nbre_tentative INT,
   booleen boolean, 
     FOREIGN KEY (IdQuestion)
      REFERENCES Question (IdQuestion),
     FOREIGN KEY (IdJoueur)
      REFERENCES Joueur (IdJoueur) 
);


CREATE TABLE IF NOT EXISTS Scan_Joueur  (
   IdJoueur serial NOT NULL,
   IdReponse serial NOT NULL,
   IdQuestion serial NOT NULL,
   primary key (IdJoueur, IdReponse, IdQuestion),
   booleen_question boolean,
   FOREIGN KEY (IdJoueur)
      REFERENCES Joueur (IdJoueur),
   FOREIGN KEY (IdReponse)
      REFERENCES Reponse (IdReponse),
      FOREIGN KEY  (IdQuestion)
        REFERENCES Question(IdQuestion)           
);

CREATE TABLE IF NOT EXISTS Reponse  (
   IdReponse serial PRIMARY KEY,
   Description_Reponse VARCHAR (255) 
);


insert into Reponse (IdReponse, Description_Reponse)
values 
(DEFAULT, 'Jean loup guillaume'),
(DEFAULT, 'Arnaud REVEL'),
(DEFAULT, 'Christophe RIGAUD'),
(DEFAULT, 'Christophe DEMKO'),
(DEFAULT, 'Petra gomez kramer'),
(DEFAULT, 'Jean Marc Ogier'),
(DEFAULT, 'Jean Christophe BURIE'),
(DEFAULT, 'Yacine Ghamri Doudane'),
(DEFAULT, 'Mohamed Muzzamil Luqman'),
(DEFAULT, 'Armelle PRIGENT');


