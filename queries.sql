/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-----------------------

BEGIN;
UPDATE animals
SET species = 'unspecified';

SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species = '';
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT my_savepoint;
UPDATE animals SET weight_kg= weight_kg * -1;
ROLLBACK TO my_savepoint;
UPDATE animals SET weight_kg= weight_kg * -1 WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;

------------------------

SELECT COUNT(*) FROM animals;

SELECT COUNT(id) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered, AVG(escape_attempts) as avg_escapes FROM animals GROUP BY neutered;

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT SPECIES,
AVG(ESCAPE_ATTEMPTS) FROM ANIMALS WHERE DATE_OF_BIRTH BETWEEN 
'1990-01-01' AND '2000-12-31'
GROUP BY SPECIES;

-----------------------------------------------------------------------------------

SELECT name FROM animals JOIN owners ON owners.id = animals.owner_id
WHERE owners.full_name = 'Melody Pond';

SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

SELECT owners.full_name, animals.name FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

SELECT species.name, COUNT(animals.id) AS count FROM species
LEFT JOIN animals ON species.id = animals.species_id GROUP BY species.id;

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id
JOIN species ON animals.species_id = species.id
WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id
WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';

SELECT owners.full_name, COUNT(animals.id) AS count FROM owners 
JOIN animals ON owners.id = animals.owner_id GROUP BY owners.id ORDER BY 
count DESC LIMIT 1;
