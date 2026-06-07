-- Create table called 'boats'
CREATE TABLE boats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40)
);

-- Insert two boats
INSERT INTO boats (name)
VALUES ('Rogue Wave'), ('Harbor Master');


SELECT * FROM boats;