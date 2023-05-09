/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOL,
    weight_kg DECIMAL,
     PRIMARY KEY (id)
);

ALTER TABLE animals ADD COLUMN species TEXT;