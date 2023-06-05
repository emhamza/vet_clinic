/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE   name Like '%mon';
SELECT * from animals WHERE   date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * from animals WHERE   neutered = true and escape_attempts < 3;
SELECT * from animals WHERE   name in ('Agumon', 'Pikachu');
SELECT  name, escape_attempts from animals WHERE   weight_kg > 10.5;
SELECT * from animals WHERE   neutered = true;
SELECT * from animals WHERE   name <> 'Gabumon';
SELECT * from animals WHERE  weight_kg >= 10.4 and weight_kg  <= 17.3;
