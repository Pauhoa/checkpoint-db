INSERT INTO entreprise (nom, description) VALUES ('Entreprise A', 'Description entreprise A');
INSERT INTO recruteur (login, mot_de_passe, entreprise_id) VALUES ('Jean', 'password', 1);

INSERT INTO candidat (login, mot_de_passe, nom, prenom, email, telephone, presentation)
VALUES ('Paul', 'password', 'Emploi', 'Paul', 'email@email.com', '0123456789', 'presentation');

INSERT INTO offre (titre, descriptif, ville, entreprise_id)
VALUES ('Dev', 'Descriptif', 'Paris', 1);

INSERT INTO candidature (candidat_id, offre_id) VALUES (1, 1);
