/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (

     id                 int primary key not null,
     name               varchar not null,
     date_of_birth      date not null,
     escape_attempts    int not null,
     neutered           boolean not null,
     weight_kg          decimal(10, 2),
     species             varchar
);
