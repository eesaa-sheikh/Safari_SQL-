-- Safari Setup goes here

-- MAKE A DROP FUNCTION.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
DROP TABLE enclosures;

DROP TABLE assignments;

DROP TABLE staffs;

DROP TABLE animals;

-- This is is a test


-- SETUP EACH TABLE.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

--enclosure
CREATE TABLE enclosures(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
capacity INT,
-- Employee ID
employee_id INT REFERENCES employee(id),
-- enclosure ID
enclosure_id INT REFERENCES enclosure(id),
closedForMaintenance BOOLEAN
);

--Staff
CREATE TABLE staffs(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
employee number INT
);

--Assignment
CREATE TABLE assignments(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT,
employee_id INT REFERENCES employee(id)
);

--animals
CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT,
enclosure_id INT REFERENCES enclosure(id),
);




