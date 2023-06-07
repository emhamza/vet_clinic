/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE   name Like '%mon';
SELECT * from animals WHERE   date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * from animals WHERE   neutered = true and escape_attempts < 3;
SELECT * from animals WHERE   name in ('Agumon', 'Pikachu');
SELECT  name, escape_attempts from animals WHERE   weight_kg > 10.5;
SELECT * from animals WHERE   neutered = true;
SELECT * from animals WHERE   name <> 'Gabumon';
SELECT * from animals WHERE  weight_kg >= 10.4 and weight_kg  <= 17.3;


-- UPDATE the animals table by setting the species column to unspecified, then roll back the change
BEGIN; -- start transaction

   UPDATE animals
   SET species = 'unspecified'; -- make change

   SELECT species from animals; -- verify that change was made

ROLLBACK;

SELECT species from animals; -- verify that change was undone


-- Update the animals table by setting the species column to digimon & pokemon
BEGIN;

    UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

    UPDATE animals SET species = 'pokemon' WHERE species is null;

SELECT species from animals; -- verify that change was made
COMMIT;
SELECT species from animals; -- verify that change persists after commit


--delete all records in the animals table
BEGIN;

    DELETE FROM animals;

SELECT species from animals; -- verify that change was made
ROLLBACK;
SELECT species from animals; -- verify that change undone after rollback


--Del, create savepoint, update animals weight and rollback to SP1
BEGIN;

    DELETE FROM animals WHERE date_of_birth > '2022-01-01';

    SAVEPOINT SP1; --create savepoint

    UPDATE animals SET weight_kg = weight_kg * -1;

    ROLLBACK TO SP1: --rollback to SP1

    UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT; --Commit the transaction
SELECT species from animals; -- verify that change persists after commit


--quries to answer the required question
SELECT COUNT(*) AS animal_count FROM animals; --how many animals are there?

SELECT COUNT(*) AS animals_without_escape_attempts
    FROM animals
WHERE escape_attempts = 0; --how many never tried escape attempts?

SELECT AVG(weight_kg) AS average_weight FROM animals; --avg weight of animals

SELECT neutered, COUNT(*) AS escape_count
    FROM animals
    WHERE escape_attempts > 0
    GROUP BY neutered
ORDER BY escape_count DESC; -- who escaped the most, neutered or not neutered animals?


SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
    FROM animals
GROUP BY species; --MIN, MAX weight of each type of animal


SELECT species, AVG(escape_attempts) AS avg_escape_attempts
    FROM animals
    WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?


--third part queries goes here
--animals belong to Melody Pond
SELECT animals.name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Melody Pond';

--animals type of Pokemon
SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

--list all the owners and their animals including those who have not owned animal
SELECT owners.full_name, animals.name
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

--animals per species
SELECT species.name, COUNT(*) AS animal_count
FROM animals
LEFT JOIN species ON animals.species_id = species.id
GROUP BY species.name;

--List all Digimon owned by Jennifer Orwell.
SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species.id
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Jennifer Orwell'
  AND species.name = 'Digimon';


--List all animals owned by Dean Winchester that haven't tried to escape.
SELECT animals.name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester'
  AND animals.escape_attempts = 0;

--who owns the most animals
SELECT owners.full_name, COUNT(animals.id) AS animal_count
FROM owners
JOIN animals ON owners.id = animals.owner_id
GROUP BY owners.full_name
ORDER BY animal_count DESC
LIMIT 1;

