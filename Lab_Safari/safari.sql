-- Safari Setup goes here

-- MAKE A DROP FUNCTION.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
DROP TABLE assignment;
DROP TABLE animals;
DROP TABLE enclosure;
DROP TABLE staff;


-- This is is a test


-- SETUP EACH TABLE.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

--animals
CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT
);

--Staff
CREATE TABLE Staff(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
employee number INT
);

--Assignment
CREATE TABLE Assignment(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT
);

--enclosure
CREATE TABLE enclosure(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
capacity INT,
closedForMaintenance VARCHAR(255),

);


