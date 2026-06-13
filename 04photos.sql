CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);


INSERT INTO photos (url, user_id)
VALUES
  ('https://santina.net', 3),
        ('https://alayna.net', 5),
        ('https://kailyn.name', 3),
        ('http://marjolaine.name', 1),
        ('http://chet.net', 5),
        ('http://jerrold.org', 2),
        ('https://meredith.net', 4),
        ('http://isaias.net', 4),
        ('http://dayne.com', 4),
        ('http://colten.net', 2),
        ('https://adelbert.biz', 5),
        ('http://kolby.org', 1),
        ('https://deon.biz', 2),
        ('https://marina.com', 5),
        ('http://johnson.info', 1),
        ('https://linda.info', 2),
        ('https://tyrique.info', 4),
        ('http://buddy.info', 5),
        ('https://elinore.name', 2),
        ('http://sasha.com', 3);


SELECT * FROM photos;


SELECT COUNT(*) FROM photos; -- null values not counted

SELECT photo_id, COUNT(*) As no_of_comments
FROM comments
GROUP BY photo_id;

-------------- Filtering Groups with HAVING --------------
SELECT photo_id, COUNT(*) As no_of_comments
FROM comments
WHERE photo_id < 4
GROUP BY photo_id
HAVING COUNT(*) > 20;