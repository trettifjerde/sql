SELECT COUNT(*) AS total_ongoing_orders FROM ongoing_orders;

SELECT * FROM users_total_spent
HAVING total_price = (SELECT MAX(total_price) FROM users_total_spent);

SELECT * FROM users_total_spent
HAVING total_price = (SELECT MIN(total_price) FROM users_total_spent);

CREATE VIEW dishes_ordered_all_time AS SELECT orders.id AS order_id, dishes.name AS dish_name, dishes.price AS dish_price
FROM orders
INNER JOIN orders_dishes ON orders.id=orders_dishes.order_id
INNER JOIN dishes ON orders_dishes.dish_id=dishes.id;

CREATE VIEW most_ordered_dishes AS
SELECT dish_name, COUNT(*) AS times_ordered, SUM(dish_price) AS total_profit FROM dishes_ordered_all_time
GROUP BY dish_name
ORDER BY times_ordered DESC, total_profit DESC, dish_name;