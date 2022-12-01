-- Queries that was written
-- The names of the animals in a given enclosure:

SELECT animals.name FROM animals inner join enclosures
ON enclosures.id = animals.enclosure_id WHERE enclosure_id =1;


--The names of the staff working in a given enclosure
SELECT assignments.staff_id FROM assignments inner join enclosures
ON enclosures.id = assignments.enclosure_id WHERE enclosure_id =1;