CREATE TABLE recruteur (
                           id INTEGER PRIMARY KEY AUTOINCREMENT,
                           login TEXT,
                           mot_de_passe TEXT,
                           entreprise_id INTEGER,
                           FOREIGN KEY (entreprise_id) REFERENCES entreprise(id)
);

CREATE TABLE candidat (
                          id INTEGER PRIMARY KEY AUTOINCREMENT,
                          login TEXT,
                          mot_de_passe TEXT,
                          nom TEXT,
                          prenom TEXT,
                          email TEXT,
                          telephone TEXT,
                          presentation TEXT
);

CREATE TABLE entreprise (
                            id INTEGER PRIMARY KEY AUTOINCREMENT,
                            nom TEXT,
                            description TEXT
);

CREATE TABLE offre (
                       id INTEGER PRIMARY KEY AUTOINCREMENT,
                       titre TEXT,
                       descriptif TEXT,
                       ville TEXT,
                       entreprise_id INTEGER,
                       FOREIGN KEY (entreprise_id) REFERENCES entreprise(id)
);

CREATE TABLE candidature (
                             id INTEGER PRIMARY KEY AUTOINCREMENT,
                             candidat_id INTEGER,
                             offre_id INTEGER,
                             FOREIGN KEY (candidat_id) REFERENCES candidat(id),
                             FOREIGN KEY (offre_id) REFERENCES offre(id)
);