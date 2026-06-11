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