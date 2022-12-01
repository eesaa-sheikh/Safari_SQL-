-- Safari Setup goes here

-- MAKE A DROP FUNCTION.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

DROP TABLE IF EXISTS assignments;

DROP TABLE IF EXISTS staffs;

DROP TABLE IF EXISTS animals;

DROP TABLE IF EXISTS enclosures;

-- This is is a test


-- SETUP EACH TABLE.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

--enclosure
CREATE TABLE enclosures(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
capacity INT,
-- Employee ID
-- employee_id INT REFERENCES employee(id),
-- enclosure ID
closedForMaintenance BOOLEAN
);

--Staff
CREATE TABLE staffs(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
employeeNumber INT
--enclosure_id INT REFERENCES enclosure(id) --Change if messed (change this to assigment maybe)
);


--Assignment
CREATE TABLE assignments(
id SERIAL PRIMARY KEY,
day VARCHAR(255),
staff_id INT REFERENCES staffs(id),
enclosure_id INT REFERENCES enclosures(id)
);

--animals
CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT,
enclosure_id INT REFERENCES enclosures(id)
);








-- enclosure 
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Lion', 10, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Fish', 1000, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Reptile', 100, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Tiger', 17, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Penguin', 30, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Shark', 75, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Zebras', 26, true);

-- Employee (6 people)

INSERT INTO staffs (name, employeeNumber) VALUES ('Jonathon', 12780);

INSERT INTO staffs (name, employeeNumber) VALUES ('Eesaa', 12102);

INSERT INTO staffs (name, employeeNumber) VALUES ('Rimm', 90812);

INSERT INTO staffs (name, employeeNumber) VALUES ('Eon', 89081);

INSERT INTO staffs (name, employeeNumber) VALUES ('Ian', 45670);

INSERT INTO staffs (name, employeeNumber) VALUES ('Wilson', 12031);


-- Animal (4 lions)

INSERT INTO animals (name, age, enclosure_id) VALUES ('LIL Meow Meow', 5, 1);

INSERT INTO animals (name, age, enclosure_id) VALUES ('Meowth', 1, 1);

INSERT INTO animals (name, age, enclosure_id) VALUES ('Prince', 2, 6);

INSERT INTO animals (name, age, enclosure_id) VALUES ('Kebab', 30, 5);



-- assignment
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Monday', 1, 1);
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Tuesday', 2, 2);
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Wednesday', 3, 2);
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Thursday', 4, 3);
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Friday', 5, 1);
INSERT INTO assignments (day, staff_id, enclosure_id) VALUES ('Saturday', 6, 2);




