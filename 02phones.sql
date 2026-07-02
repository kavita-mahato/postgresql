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


-- Calculate Total Revenue in the SELECT Clause
SELECT name, price * units_sold AS total_revenue FROM phones WHERE price * units_sold > 1000000;


---------------- Filtering Stack ------------------
SELECT manufacturer, SUM(price * units_sold)
FROM phones
GROUP BY manufacturer
HAVING SUM(price * units_sold) > 2000000;

------------ SORT OFFSET LIMIT Exercise ------------
SELECT *
FROM phones
ORDER BY price DESC
LIMIT 2
OFFSET 1;

------------ UNION Exercise ------------
SELECT manufacturer
FROM phones
WHERE price < 170
UNION
SELECT manufacturer
FROM phones
GROUP BY manufacturer
HAVING COUNT(*) > 2;

------------ Subquery Exercise --------------
SELECT name, price, price / (
    SELECT MAX(price) FROM phones
) price_ratio
FROM phones;

----------- Exercise ------------
SELECT MAX(p.avg_price) AS max_avg_price
FROM (
    SELECT AVG(price) AS avg_price
    FROM phones
    GROUP BY manufacturer
) AS p

----------- Print name and price of phones that have a price greater than the Samsung S5620 Monte ------------
SELECT name, price
FROM phones
WHERE price > (
    SELECT price 
    FROM phones WHERE name = 'S5620 Monte'
);
