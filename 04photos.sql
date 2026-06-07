CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 4),
('http:/two.jpg', 1),
('http:/three.jpg', 1),
('http:/four.jpg', 1),
('http:/five.jpg', 2),
('http:/six.jpg', 3),
('http:/seven.jpg', 4);


SELECT * FROM photos;

SELECT * FROM photos WHERE user_id = 4;

SELECT url, username FROM photos JOIN users ON users.id = photos.user_id;

DROP TABLE photos; -- To delete entire table

DELETE FROM users
WHERE id = 1;