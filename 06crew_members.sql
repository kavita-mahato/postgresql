-- Create table called 'crew_members'
CREATE TABLE crew_members (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    boat_id INTEGER REFERENCES boats(id)
);

-- Insert three crew members
INSERT INTO crew_members (first_name, boat_id)
VALUES ('Alex', 1), ('Lucia', 1), ('Ari', 2);


SELECT * FROM crew_members WHERE boat_id = 1;