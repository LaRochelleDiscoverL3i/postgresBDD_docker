CREATE TABLE IF NOT EXISTS Joueur  (
   IdJoueur serial PRIMARY KEY,
   Score  INT,
   Temps_test TIMESTAMP,
   level_game INT
);

CREATE TABLE IF NOT EXISTS Reponse  (
   IdReponse serial PRIMARY KEY,
   Description_Reponse VARCHAR (255), 
   IdQuestion serial Not NULL
);
CREATE TABLE IF NOT EXISTS Question  (
   IdQuestion serial PRIMARY KEY,
   Indice VARCHAR (255),
   positionReponse INT NOT NULL,
   description_question VARCHAR (255),
   level_game INT,
   IdReponse serial Not NULL,
   FOREIGN KEY (IdReponse)
      REFERENCES Reponse (IdReponse)
);


alter table Reponse add  FOREIGN KEY (IdQuestion) REFERENCES Question(IdQuestion); 



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

