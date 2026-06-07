CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id)
);


INSERT INTO photos (url, user_id)
VALUES
    ('http://one.jpg', 4);

INSERT INTO photos (url, user_id)
VALUES
    ('http://two.jpg', 1),
    ('http://three.jpg', 4),
    ('http://four.jpg', 2),
    ('http://five.jpg', 3),
    ('http://six.jpg', 3),
    ('http://seven.jpg', 4);


SELECT * FROM photos;

SELECT * FROM photos WHERE user_id = 4;

SELECT url, username FROM photos JOIN users ON users.id = photos.user_id;