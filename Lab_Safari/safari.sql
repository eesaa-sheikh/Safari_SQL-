-- Safari Setup goes here

-- MAKE A DROP FUNCTION.
DROP TABLE animals;
DROP TABLE enclosure;


-- SETUP EACH TABLE.
CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT
);

CREATE TABLE enclosure(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
capacity INT,
closedForMaintenance VARCHAR(255),
);