-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INTEGER
  );

-- 2. Add 5 orders to the orders table.
    --  Make orders for at least two different people.
    --  person_id should be different for different people.

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'Shrimp Cocktail', 12.99, 2),
(2, 'Buffalo Wings', 13.99, 1),
(1, 'Filet Mignon', 40.99, 2),
(2, 'Grilled Salmon', 32.21, 1),
(1, 'Blueberry Pie', 10.99, 1),
(2, 'Brownie', 8.22, 2);

-- 3. Select all the records from the orders table.

SELECT * FROM orders;

-- 4. Calculate the total number of products ordered.

SELECT COUNT(order_id) FROM orders;

-- 5. Calculate the total order price.

SELECT SUM(product_price) from orders;

-- 6. Calculate the total order price by a single person_id.

SELECT SUM(product_price)
from orders 
GROUP BY person_id;