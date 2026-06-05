-- Create a table of cities 
CREATE TABLE cities (
	name VARCHAR(50), 
    country VARCHAR(50),
    population INTEGER,
    area INTEGER
);


-- Insert data in one row
INSERT INTO cities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);


-- Insert data in multiple rows
INSERT INTO cities (name, country, population, area)
VALUES 
	('Delhi', 'India', 28125000, 2240),
    ('Shanghai', 'China', 22125000, 4015),
    ('Sao Paulo', 'Brazil', 20935000, 3043);


-- Retrive all data from databse 
SELECT * FROM cities;


-- Retrive specific column from the database 
SELECT name, country FROM cities;


-- Retrive specific data several times and any order
SELECT name, name, area, population, name FROM cities;


-- Custom operations while retriving data
SELECT name, population / area FROM cities;


-- Create another property using existing ones
SELECT name, population / area AS density FROM cities;


-- Filtering rows with WHERE
SELECT name, country FROM cities WHERE area > 4000;
SELECT * FROM cities WHERE area = 8223;
SELECT name, country, population / area AS density FROM cities WHERE area != 8223;
SELECT *, population / area AS density FROM cities WHERE area <> 8223;

SELECT * FROM cities WHERE area BETWEEN 2000 AND 4000;
SELECT * FROM cities WHERE name IN ('Delhi', 'Shanghai');
SELECT * FROM cities WHERE name NOT IN ('Delhi');



-- Filter data with multiple conditions
SELECT * FROM cities WHERE area NOT IN (3043, 8223) AND name = 'Tokyo';
SELECT * FROM cities WHERE area NOT IN (3043, 8223) OR name IN ('Delhi');


-- Calculations in WHERE Clause
SELECT name, population / area AS Density FROM cities  WHERE population / area > 4000;


-- Updating rows
UPDATE cities SET population = 39505000 WHERE name IN ('Tokyo');
SELECT * FROM cities;


-- Deleting rows
DELETE FROM cities WHERE name IN ('Tokyo');
SELECT * FROM cities;

DELETE FROM cities WHERE name NOT IN ('Tokyo');
SELECT * FROM cities;

