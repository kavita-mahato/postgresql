CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);


INSERT INTO users (username) 
VALUES 
    ('Reyna.Marvin'),
    ('Micah.Cremin'),
    ('Alfredo66'),
    ('Gerard_Mitchell42'),
    ('Frederique_Donnelly');

SELECT * FROM users;

SELECT url, username
FROM photos
JOIN users ON users.id = photos.user_id;

INSERT INTO photos (url, user_id)
VALUES ('https://banner.jpg', NULL);

SELECT * FROM photos;

-- photos -> users
SELECT url, username
FROM photos
LEFT JOIN users ON users.id = photos.user_id;

-- users -> photos
SELECT url, username
FROM users
LEFT JOIN photos ON photos.user_id = users.id;

SELECT url, username
FROM photos
RIGHT JOIN users ON users.id = photos.user_id;

SELECT url, username
FROM photos
FULL JOIN users ON users.id = photos.user_id;

INSERT INTO users (username )
VALUES ('Nicole');

-- 3 Way JOIN
SELECT url, contents, username
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = photos.user_id AND users.id = photos.user_id;


---------------- Picturing Group by ---------------
SELECT user_id
FROM comments
GROUP BY user_id;


---------------- Aggregate Functions ---------------
SELECT MAX(id)
FROM comments;

SELECT MIN(id)
FROM comments;

SELECT AVG(id)
FROM comments;

SELECT SUM(id)
FROM comments;

SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(id) AS frequency 
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id;