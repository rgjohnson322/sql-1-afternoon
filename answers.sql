AFTERNOON PROJECT SQL BACKUP 
Table- person
1.
CREATE TABLE PERSON (
  id SERIAL PRIMARY KEY,
  name VARCHAR (255) NOT NULL,
  age INT NOT NULL,
  height_in_cm INT NOT NULL,
  city VARCHAR (35) NOT NULL,
  favorite_color VARCHAR (30) NOT NULL
)

2.
INSERT INTO person (name, age, height_in_cm, city, favorite_color)
VALUES
('Rob', 27, 180, 'Austin', 'grey'),
('Amber', 26, 140, 'Austin', 'green'),
('Granny', 60, 110, 'Richmond', 'purple'),
('madelyn arsenault', 20, 173, 'salt lake', 'blue'),
('Tramy Nguyen', 24, 125, 'LA', 'pink');

3.
SELECT * FROM person ORDER BY height_in_cm DESC;
4.
SELECT * FROM person ORDER BY height_in_cm ASC;
5.
SELECT * FROM person ORDER BY age DESC;


6.
SELECT * from person
WHERE age > 20;
7.
SELECT * from person
WHERE age = 18;
8.
SELECT * from person
WHERE age < 20 or age > 30;
9.
SELECT * from person
WHERE age != 27;
10.
SELECT * from person
WHERE favorite_color != 'red';

11.
SELECT * from person
WHERE favorite_color != 'red' AND favorite_color != 'blue';
12.
SELECT * from person
WHERE favorite_color = 'orange' OR favorite_color = 'green';
13.
SELECT * from person
WHERE favorite_color IN ('orange', 'green', 'blue');
14.
SELECT * from person
WHERE favorite_color IN ('yellow', 'purple');

Table orders ------------------------------------------------
1.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(100) NOT NULL,
  product_price NUMERIC NOT NULL,
  quantity INT NOT NULL
  );
2.
INSERT INTO orders ( person_id, product_name, product_price, quantity )
VALUES
( 1, ‘hammer’, 15, 1),
( 1, ‘box of nails’, 5, 1),
( 1, ‘ply wood’, 4.50, 20),
( 2, ‘gloves’, 10, 1),
( 2, ‘shovel’, 40, 1);

3. SELECT * FROM orders;
4. SELECT SUM(quantity) FROM orders;
5. SELECT SUM(product_price * quantity) FROM orders;
6. SELECT SUM(product_price * quantity) FROM orders
WHERE peson_id = 1;

Table-Artist-------------------------------------------------------------------
1.	INSERT INTO artist (name) 
VALUES
('3OH!3'),
('Joey Pecoraro'),
('Marshmellow');
2.	SELECT * FROM artist ORDER BY name DESC LIMIT 10;
3.	SELECT * FROM artist ORDER BY name ASC LIMIT 5;
4.	SELECT * FROM artist 
WHERE name ILIKE 'Black%';
5.	SELECT * FROM artist 
WHERE name ILIKE ‘%Black%;


Table – Employee
1.	SELECT first_name, last_name FROM employee 
WHERE city = ‘Calgary’;

2.	SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

3.	SELECT * FROM employee
ORDER BY birth_date ASC LIMIT 1;
4.	SELECT * FROM employee
WHERE reports_to = 2;
5.	SELECT COUNT(*) FROM employee WHERE city = ‘Lethbridge’;

TABLE – INVOICE------------------------------------------------
1.	SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

2.	SELECT MAX(total) FROM invoice;
3.	SELECT MINtotal) FROM invoice;
4.	SELECT * FROM invoice
WHERE total > 5;
5.	SELECT COUNT(*) FROM invoice
WHERE total < 5;

6.	SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');
7.	SELECT AVG(total) FROM invoice;
8.	8. SELECT SUM(total) FROM invoice;
