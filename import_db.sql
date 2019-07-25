DROP TABLE if exists cats;
DROP TABLE if exists toys;
DROP TABLE if exists cattoys;


CREATE TABlE cats (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  color VARCHAR(100),
  breed VARCHAR(100)
);

CREATE TABlE toys (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  color VARCHAR(100),
  price FLOAT
);

CREATE TABlE cattoys (
  id SERIAL PRIMARY KEY,
  cat_id INTEGER, 
  toy_id INTEGER,


  FOREIGN KEY(cat_id) references cats(id),
  FOREIGN KEY(toy_id) references toys(id)
);

INSERT INTO
cats(name, color, breed)
VALUES
('Don', 'Blue', 'Egyptian'),
('Rick', 'Black', 'Bald'),
('Tommy', 'Red', 'Egyptian'),
('Troll', 'Green', 'Bald'),
('Pootles', 'Purple', 'Expensive');

INSERT INTO
  toys(name, color, price)
VALUES
  ('Tower','Yellow', 53.34),
  ('Catnip', 'Green', 8.24),
  ('String', 'Fuschia', 0.62),
  ('Mouse', 'Grey', 15.23),
  ('Ball', 'Orange', 3.79);

INSERT INTO
  cattoys(cat_id, toy_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (1,2),
  (1,3),
  (1,4),
  (1,5);


SELECT cats.name
FROM cats
WHERE cats.color = 'Green'
UNION ALL 
SELECT toys.name
FROM toys
WHERE toys.color = 'Green'