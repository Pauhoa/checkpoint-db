# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT c.*
FROM candidat c
JOIN candidature ca ON c.id = ca.candidat_id
JOIN offre o ON ca.offre_id = o.id
WHERE o.titre = 'Dev';