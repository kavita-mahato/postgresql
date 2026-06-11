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

INSERT INTO authors(name)
VALUES
    ('Ramachandra Guha')

SELECT * FROM authors;

-- Below two queries will have same output table

SELECT title, NAME
FROM authors
LEFT JOIN books ON books.author_id = authors.id;

SELECT title, NAME
FROM books
RIGHT JOIN authors ON books.author_id = authors.id;
---------------------------------------------------