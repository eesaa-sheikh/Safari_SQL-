-- Safari Setup goes here

-- MAKE A DROP FUNCTION.§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§

DROP TABLE assignments;

DROP TABLE staffs;

DROP TABLE animals;

DROP TABLE enclosures;

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
closedForMaintenance BOOLEAN
);

--Staff
CREATE TABLE staffs(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
employeeNumber INT,
enclosure_id INT REFERENCES enclosure(id)
);


--Assignment
CREATE TABLE assignments(
id SERIAL PRIMARY KEY,
day VARCHAR(255),
employee_id INT REFERENCES employee(id),
enclosure_id INT REFERENCES enclosure(id)
);

--animals
CREATE TABLE animals(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT,
enclosure_id INT REFERENCES enclosure(id)
);










-- Employee (6 people)

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Jonathon', 12780, 1);

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Eesaa', 12102, 1);

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Rimm',90812, 1);

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Eon',89081, 1);

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Ian',45670, 1);

INSERT INTO staffs (name, employeeNumber, enclosure_id) VALUES ('Wilson',12031, 1);


-- Animal (4 lions)

INSERT INTO animals (name, age ,enclosure_id) VALUES ('LIL Meow Meow',5, 1);

INSERT INTO animals (name, age ,enclosure_id) VALUES ('Meowth',1, 1);

INSERT INTO animals (name, age ,enclosure_id) VALUES ('Prince',2, 1);

INSERT INTO animals (name, age ,enclosure_id) VALUES ('Kebab',30, 1);


-- enclosure 
INSERT INTO enclosures (name, employee_id, capacity, closedForMaintenance) VALUES ('Lion', 1, 10, false);


-- assignment
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (2, 1, 'Tuesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (3, 1, 'Wednesday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (4, 1, 'Thursday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (5, 1, 'Friday');
INSERT INTO assignments (employee_id, enclosure_id, day) VALUES (6, 1, 'Saturday');





