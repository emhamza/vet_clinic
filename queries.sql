/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE   name Like '%mon';
SELECT * from animals WHERE   date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * from animals WHERE   neutered = true and escape_attempts < 3;
SELECT * from animals WHERE   name in ('Agumon', 'Pikachu');
SELECT  name, escape_attempts from animals WHERE   weight_kg > 10.5;
SELECT * from animals WHERE   neutered = true;
SELECT * from animals WHERE   name <> 'Gabumon';
SELECT * from animals WHERE  weight_kg >= 10.4 and weight_kg  <= 17.3;

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species is null;
UPDATE animals SET species = 'pokemon' WHERE species is null;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
UPDATE animals SET weight_kg = weight_kg * -1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) AS animal_count FROM animals;
SELECT COUNT(*) AS animals_without_escape_attempts
    FROM animals
WHERE escape_attempts = 0;
SELECT AVG(weight_kg) AS average_weight FROM animals;
SELECT neutered, COUNT(*) AS escape_count
    FROM animals
    WHERE escape_attempts > 0
    GROUP BY neutered
ORDER BY escape_count DESC;
SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
    FROM animals
GROUP BY species;
SELECT species, AVG(escape_attempts) AS avg_escape_attempts
    FROM animals
    WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;







