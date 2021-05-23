CREATE TABLE Partie(
   Id INTEGER,
   Pseudo TEXT,
   Score INT,
   Temps TIME,
   PRIMARY KEY("Id" AUTOINCREMENT),
   FOREIGN KEY(Id_Joueur) REFERENCES Joueur(Id)
);

