CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    reviewer_id INTEGER REFERENCES authors(id),
    book_id INTEGER REFERENCES books(id)
);


INSERT INTO reviews (rating, reviewer_id, book_id)
VALUES
    (5, 1, 1),   -- Munshi Premchand reviews Nirmala (match)
    (4, 2, 1),   -- Dharamvir Bharti reviews Nirmala (no match)
    (5, 1, 2),   -- Munshi Premchand reviews Godan (match)
    (3, 3, 4),   -- Kanta Bharti reviews Gunahon ka Devta (no match)
    (5, 4, 6),   -- Satyajit Ray reviews Professor Shonku (match)
    (4, 5, 7),   -- Bibhutibhushan reviews Pather Panchali (match)
    (2, 6, 7),   -- Debarati reviews Pather Panchali (no match)
    (5, 8, 12),  -- Chetan Bhagat reviews 400 Days (match)
    (4, 8, 13),  -- Chetan Bhagat reviews Girl in Room 105 (match)
    (5, 10, 15), -- James Clear reviews Atomic Habits (match)
    (3, 9, 15);  -- Ruskin Bond reviews Atomic Habits (no match)

SELECT *  FROM reviews;

SELECT title, name, rating
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = books.author_id AND authors.id = reviews.reviewer_id;