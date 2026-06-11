CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author_id INTEGER REFERENCES authors(id)
);

INSERT INTO books(title, author_id)
VALUES
    ('Nirmala', 1),
    ('Godan', 1),
    ('Karmabhoomi', 1),
    ('Gunahon ka Devta', 2),
    ('Ret Ki Machhli', 3),
    ('Professor Shonku', 4),
    ('Pather Panchali', 5),
    ('Chander Pahar', 5),
    ('Ullaskar', 6),
    ('Aghore Ghumiyre Shib', 6),
    ('Palace of Illusions', 7),
    ('400 Days', 8),
    ('Girl in Room 105', 8),
    ('The Hidden Pool', 9),
    ('Atomic Habits', 10);

INSERT INTO books(title, author_id)
VALUES
    ('Orlando', NULL)

SELECT title, name FROM books JOIN authors ON authors.id = books.author_id;