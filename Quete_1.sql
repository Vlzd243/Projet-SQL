-- 1. Afficher tous les véhicules
SELECT * FROM vehicule;

-- 2. Afficher uniquement les véhicules disponibles
SELECT * FROM vehicule WHERE etat = 'disponible';

-- 3. Afficher les véhicules situés dans une ville donnée (Ex: Paris)
SELECT * FROM vehicule WHERE ville = 'Paris';

-- 4. Afficher les véhicules ayant une autonomie supérieure à 400 km
SELECT * FROM vehicule WHERE autonomie_km > 400;