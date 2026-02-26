Projet SQL B1 - clAra Mobility

Ce projet consiste en la gestion d'une base de données pour clAra Mobility, une société de location de véhicules électriques. L'objectif est de répondre à des besoins métier via des requêtes SQL optimisées sous PostgreSQL.

Analyse du Modèle de Données
La base de données est structurée autour de 4 tables principales :
- vehicule : Stocke les caractéristiques techniques et la disponibilité.
- client : Informations personnelles des utilisateurs.
- station : Points de départ et d'arrivée.
- location : Table pivot enregistrant les transactions, liant clients, véhicules et stations.

Choix Techniques Justifiés
1. Jointures Multiples (Quête 3.3) : Utilisation de deux alias (`s_dep` et `s_arr`) sur la table `station` pour récupérer simultanément le nom de la station de départ et d'arrivée.
2. Filtrage d'Agrégat (Quête 5.3) : Utilisation de `HAVING` pour filtrer les clients après le regroupement (`GROUP BY`), car `WHERE` ne peut pas être utilisé sur des fonctions d'agrégation comme `COUNT()`.
3. Détection d'absence (Quête 5.4) : Emploi d'un `LEFT JOIN` combiné à une condition `IS NULL`. C'est une méthode performante pour identifier les enregistrements d'une table sans correspondance dans une autre.

Installation & Utilisation
1. Importer le schéma de données dans pgAdmin ou via le terminal PostgreSQL.
2. Exécuter le fichier `requetes.sql` pour obtenir les résultats des quêtes.
