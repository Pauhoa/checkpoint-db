# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom
SELECT c.*
FROM candidat c
JOIN candidature ca ON c.id = ca.candidat_id
JOIN offre o ON ca.offre_id = o.id
JOIN entreprise e ON o.entreprise_id = e.id
WHERE e.nom = 'Entreprise A';