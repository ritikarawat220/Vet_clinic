/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES
 ('Agumon', '2020-02-03', 0, TRUE, 10.23),
 ('Gabumon', '2018-11-15', 2, TRUE, 8),
 ('Pikachu', '2021-01-07', 1, FALSE, 15.04),
 ('Devimon', '2017-05-12', 5, TRUE, 11);

-------------------------------------------------------------

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES
('Charmander', '2020-02-08', 0, FALSE, -11, ''),
('Plantmon', '2021-11-15', 2, TRUE, -5.7, ''),
('Squirtle', '1993-04-02', 3, FALSE, -12.13, ''),
('Angemon', '2005-06-12', 1, TRUE, -45, ''),
('Boarmon', '2005-06-07', 7, TRUE, 20.4, ''),
('Blossom', '1998-10-13', 3, TRUE, 17, ''),
('Ditto', '2022-05-14', 4, TRUE, 22, '');

--------------------------------------------------------------

INSERT INTO owners (full_name, age) VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';



INSERT INTO species (name)VALUES
('Pokemon'),
('Digimon');

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon')
WHERE name LIKE '%mon';

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon')
WHERE species_id IS NULL;

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name = 'Gabumon' OR name = 'Pikachu';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob')
WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond')
WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
WHERE name = 'Angemon' OR name = 'Boarmon';

-----------------------------------------------------------------------------------

INSERT INTO vets (name, age, date_of_graduation)VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES 
((SELECT id from vets WHERE name = 'William Tatcher' AND id = 1), (SELECT id from species WHERE name = 'Pokemon' AND id = 1)),
((SELECT id from vets WHERE name = 'Stephanie Mendez' AND id = 3), (SELECT id from species WHERE name = 'Pokemon' AND id = 1)),
((SELECT id from vets WHERE name = 'Stephanie Mendez' AND id = 3), (SELECT id from species WHERE name = 'Digimon' AND id = 2)),
((SELECT id from vets WHERE name = 'Jack Harkness' AND id = 4), (SELECT id from species WHERE name = 'Digimon' AND id = 2));



INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES 
  ((SELECT id from animals WHERE name = 'Agumon' LIMIT 1), (SELECT id from vets WHERE name = 'William Tatcher' LIMIT 1), '2020-05-24'),
  ((SELECT id from animals WHERE name = 'Agumon' LIMIT 1), (SELECT id from vets WHERE name = 'Stephanie Mendez' LIMIT 1), '2020-07-22'),
  ((SELECT id from animals WHERE name = 'Gabumon' LIMIT 1), (SELECT id from vets WHERE name = 'Jack Harkness' LIMIT 1), '2021-02-02'),
  ((SELECT id from animals WHERE name = 'Pikachu' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2020-01-05'),
  ((SELECT id from animals WHERE name = 'Pikachu' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2020-03-08'),
  ((SELECT id from animals WHERE name = 'Pikachu' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2020-05-14'),
  ((SELECT id from animals WHERE name = 'Devimon' LIMIT 1), (SELECT id from vets WHERE name = 'Stephanie Mendez' LIMIT 1), '2021-05-04'),
  ((SELECT id from animals WHERE name = 'Charmander' LIMIT 1), (SELECT id from vets WHERE name = 'Jack Harkness' LIMIT 1), '2021-02-24'),
  ((SELECT id from animals WHERE name = 'Plantmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2019-12-21'),
  ((SELECT id from animals WHERE name = 'Plantmon' LIMIT 1), (SELECT id from vets WHERE name = 'William Tatcher' LIMIT 1), '2020-08-10'),
  ((SELECT id from animals WHERE name = 'Plantmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2021-04-07'),
  ((SELECT id from animals WHERE name = 'Squirtle' LIMIT 1), (SELECT id from vets WHERE name = 'Stephanie Mendez' LIMIT 1), '2019-09-29'),
  ((SELECT id from animals WHERE name = 'Angemon' LIMIT 1), (SELECT id from vets WHERE name = 'Jack Harkness' LIMIT 1), '2020-10-03'),
  ((SELECT id from animals WHERE name = 'Angemon' LIMIT 1), (SELECT id from vets WHERE name = 'Jack Harkness' LIMIT 1), '2020-11-04'),
  ((SELECT id from animals WHERE name = 'Boarmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2019-01-24'),
  ((SELECT id from animals WHERE name = 'Boarmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2019-05-15'),
  ((SELECT id from animals WHERE name = 'Boarmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2020-02-27'),
  ((SELECT id from animals WHERE name = 'Boarmon' LIMIT 1), (SELECT id from vets WHERE name = 'Maisy Smith' LIMIT 1), '2020-08-03'),
  ((SELECT id from animals WHERE name = 'Blossom' LIMIT 1), (SELECT id from vets WHERE name = 'Stephanie Mendez' LIMIT 1), '2020-05-24'),
  ((SELECT id from animals WHERE name = 'Blossom' LIMIT 1), (SELECT id from vets WHERE name = 'William Tatcher' LIMIT 1), '2021-01-11');

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

