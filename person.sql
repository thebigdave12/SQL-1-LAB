-- 1. Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. 
-- id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR (30) NOT NULL,
  age INTEGER NOT NULL, 
  height INTEGER NOT NULL,
  city VARCHAR (20) NOT NULL,
  favorite_color VARCHAR (20) 
  );


-- 2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Bob the Builder', 35, 140, 'Pittsburgh', 'Yellow'),
('Reck it Ralf', 42, 220, 'Video Game', 'Red'),
('Madame Queen', 63, 150, 'London', 'Purple'),
('Shaquille Oneal', 50, 210, 'Los Angeles', 'Blue'),
('Jimmney Cricket', 200, 10, 'Amsterdam', 'Green');

-- 3. Select all the people in the person table by height from tallest to shortest.

SELECT * FROM person
ORDER BY height DESC;

-- 4. Select all the people in the person table by height from shortest to tallest.

SELECT * FROM person
ORDER BY height;

-- 5. Select all the people in the person table by age from oldest to youngest.

SELECT * FROM person
ORDER BY age DESC;

-- 6. Select all the people in the person table older than age 20.

SELECT * FROM person
WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18.

SELECT * FROM person
WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30.

SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9. Select all the people in the person table that are not 27 (use not equals).

SELECT * FROM person
WHERE age != 27;

-- 10. Select all the people in the person table where their favorite color is not red.

SELECT * FROM person
WHERE favorite_color != 'Red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue.

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- 12. Select all the people in the person table where their favorite color is orange or green.

SELECT * FROM person
WHERE favorite_color = 'Green' OR favorite_color != 'Orange';

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).

SELECT * FROM person
WHERE favorite_color in ('Orange', 'Green', 'Blue');

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).

SELECT * FROM person
WHERE favorite_color in ('Yellow', 'Purple');