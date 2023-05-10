/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOL,
    weight_kg DECIMAL,
     PRIMARY KEY (id)
);

ALTER TABLE animals ADD COLUMN species TEXT;

--------------------------------------------------------------------

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name TEXT,
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name TEXT
);

ALTER TABLE animals
    DROP COLUMN species,
    ADD COLUMN species_id INT,
    ADD COLUMN owner_id INT,
ADD CONSTRAINT fk_species
  FOREIGN KEY (species_id)
  REFERENCES species(id),
ADD CONSTRAINT fk_owner
  FOREIGN KEY (owner_id)
  REFERENCES owners(id);
