-- CREATE TABLE dishes (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     price NUMERIC(5, 2) NOT NULL
-- );
-- 
-- CREATE TABLE orders (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     order_time TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
--     fullfilled TIMESTAMP
-- );
-- 
-- CREATE TABLE orders_dishes(
--     order_id INT REFERENCES orders(id) ON DELETE CASCADE,
--     dish_id INT REFERENCES dishes(id) ON DELETE CASCADE,
--     PRIMARY KEY (order_id, dish_id)
-- );
-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(100) NOT NULL,
--     email VARCHAR(250) NOT NULL
-- );

-- ALTER TABLE orders
-- ADD COLUMN user_id INT REFERENCES users(id) ON DELETE CASCADE;
-- 
-- INSERT INTO dishes (name, price) VALUES 
-- ('Broom slice', 8),
-- ('Strudel', 10),
-- ('V60 1 cup', 6.5),
-- ('V60 2 cups', 8),
-- ('Omelette', 9),
-- ('Bruschetta', 13),
-- ('Cappuccino', 4)
-- INSERT INTO users (username, email) VALUES 
-- ('trettifjerde', 'sasjandreeva@gmail.com'),
-- ('kesak', 'kesak@meow.me'),
-- ('somedude', 'dudoolele@me.me'),
-- ('hedemann', 'hedemann@nl.no');
-- INSERT INTO orders (user_id) VALUES
-- (1), (2), (3), (4), (1), (2), (1), (2);
-- INSERT INTO orders_dishes (order_id, dish_id) VALUES
-- (1, 2),
-- (1, 3),
-- (1, 4),
-- (2, 1),
-- (2, 5),
-- (3, 5),
-- (4, 6);
-- 
CREATE VIEW ongoing_orders AS SELECT orders.id AS order_id, order_time, dishes.name, dishes.price FROM orders
INNER JOIN orders_dishes ON orders.id=orders_dishes.order_id
INNER JOIN dishes ON orders_dishes.dish_id=dishes.id
WHERE orders.fullfilled IS NULL;

CREATE VIEW ongoing_dishes AS SELECT users.username, orders.id as order_id, dishes.name, dishes.price FROM users
INNER JOIN orders ON orders.user_id=users.id
INNER JOIN orders_dishes ON orders.id=orders_dishes.order_id
INNER JOIN dishes ON orders_dishes.dish_id=dishes.id
WHERE orders.fullfilled IS NULL;
-- 
-- UPDATE orders
-- INNER JOIN users ON orders.user_id=users.id
-- SET is_fullfilled = 1
-- WHERE users.id=2;

CREATE VIEW users_total_spent AS
SELECT users.username AS username, SUM(dishes.price) AS total_price FROM users
INNER JOIN orders ON users.id=orders.user_id
INNER JOIN orders_dishes ON orders.id=orders_dishes.order_id
INNER JOIN dishes ON orders_dishes.dish_id=dishes.id
GROUP BY username;