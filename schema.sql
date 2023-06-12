/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (

     id                 int primary key not null,
     name               varchar not null,
     date_of_birth      date not null,
     escape_attempts    int not null,
     neutered           boolean not null,
     weight_kg          decimal(10, 2)
);


ALTER TABLE animals ADD COLUMN species varchar(255);

--create a owners table with id, full name and age
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    age INTEGER
);

--create a species table with id, name
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

ALTER TABLE animals DROP COLUMN species; --drop the species column from animals

--add the new columns "species_id" and "owner_id" with the appropriate foreign key constraints
ALTER TABLE animals
    ADD COLUMN species_id INTEGER REFERENCES species(id),
    ADD COLUMN owner_id INTEGER REFERENCES owners(id);

--create vets table
CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  date_of_graduation DATE
);

--create a specializations table
CREATE TABLE specializations (
  vet_id INTEGER REFERENCES vets (id),
  species_id INTEGER REFERENCES species (id),
  PRIMARY KEY (vet_id, species_id)
);

--create a visits table
CREATE TABLE visits (
  animal_id INTEGER REFERENCES animals (id),
  vet_id INTEGER REFERENCES vets (id),
  visit_date DATE,
  PRIMARY KEY (animal_id, vet_id, visit_date)
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

--create an index for visits animal_id
CREATE INDEX idx_visits_animal_id ON visits (animal_id);

--create an index for visits vet_id
CREATE INDEX idx_visits_animal_id ON visits (vet_id ASC);

--create an index for owners email column
CREATE INDEX idx_visits_animal_id ON owners (email);