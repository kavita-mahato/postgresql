CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO authors(name)
VALUES
    ('Munshi Premchand'),
    ('Dharamvir Bharti'),
    ('Kanta Bharti'),
    ('Satyajit Ray'),
    ('Bibhutibhushan Bandyopadhyay'),
    ('Debarati Mukhopadhyay'),
    ('Chitra Banerjee'),
    ('Chetan Bhagat'),
    ('Ruskin Bond'),
    ('James Clear');

SELECT * FROM authors;