-- Create a table of phones with properties name, manufacturer, price, units_sold
CREATE TABLE phones (
    name VARCHAR(50),
    manufacturer VARCHAR(50),
    price INTEGER,
    units_sold INTEGER
);


-- Insert data in the table 
INSERT INTO phones (name, manufacturer, price, units_sold)
VALUES 
    ('N1280', 'Nokia', 199, 1925),
    ('Iphone 4', 'Apple', 399, 9436),
    ('Galaxy 5', 'Samsung', 299, 2539),
    ('S5620 Monte', 'Samsung', 250, 2385),
    ('N8', 'Nokia', 150, 7543)


-- Retrive data of the revenue column
SELECT name, price FROM phones WHERE units_sold > 5000;


-- Select name, manufacturer for all phones by Apple & Samsung
SELECT name, manufacturer FROM phones WHERE manufacturer IN ('Apple', 'Samsung');
SELECT name, manufacturer FROM phones WHERE manufacturer IN ('Apple') OR manufacturer IN ('Samsung');
