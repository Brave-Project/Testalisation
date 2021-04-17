CREATE TABLE Joueur(
   Id INTEGER,
   Pseudo VARCHAR(50) NOT NULL,
   PRIMARY KEY("Id" AUTOINCREMENT)
);

CREATE TABLE Niveau(
   Id INTEGER,
   Libelle VARCHAR(50),
   PRIMARY KEY("Id" AUTOINCREMENT)
);

CREATE TABLE Partie(
   Id INTEGER,
   Id_Joueur INT NOT NULL,
   PRIMARY KEY("Id" AUTOINCREMENT),
   FOREIGN KEY(Id_Joueur) REFERENCES Joueur(Id)
);

CREATE TABLE Score(
   Id INTEGER,
   Montant VARCHAR(50),
   Id_Partie INT NOT NULL,
   Id_Niveau INT NOT NULL,
   PRIMARY KEY("Id" AUTOINCREMENT),
   FOREIGN KEY(Id_Partie) REFERENCES Partie(Id),
   FOREIGN KEY(Id_Niveau) REFERENCES Niveau(Id)
);

CREATE TABLE Temps(
   Id INTEGER,
   Montant INT,
   Id_Niveau INT NOT NULL,
   Id_Partie INT NOT NULL,
   PRIMARY KEY("Id" AUTOINCREMENT),
   FOREIGN KEY(Id_Niveau) REFERENCES Niveau(Id),
   FOREIGN KEY(Id_Partie) REFERENCES Partie(Id)
);
