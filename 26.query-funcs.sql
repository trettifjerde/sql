-- SELECT SUM(price * billing_frequency) FROM memberships;
-- 
-- SELECT TIMESTAMPDIFF(MINUTE, ordered_at, fullfilled) from orders
-- WHERE fullfilled IS NOT NULL UNION ALL
-- SELECT TIMESTAMPDIFF(MINUTE, ordered_at, NOW()) from orders
-- WHERE fullfilled IS NULL;
-- 
-- UPDATE order
-- SET fullfilled = DATE_ADD(NOW(), INTERVAL - 6 HOUR)
-- WHERE fullfilled IS NULL;
-- 
-- SELECT * FROM orders;

-- SELECT name from dishes
-- WHERE name LIKE '%60 %';
-- 
-- SELECT name from dishes
-- WHERE name LIKE '_60%';
-- 
-- SELECT name from dishes
-- WHERE name LIKE 'br%'; -- is case insensitive

-- SELECT EXISTS(
--     SELECT name from dishes
--     WHERE name = 'omelette'
-- );
-- 
-- SELECT id from dishes
-- WHERE EXISTS (
--     SELECT name from dishes
--     WHERE id = 1
-- );

-- SELECT o.id from orders AS o
-- INNER JOIN orders_dishes AS od ON o.id=od.order_id
-- INNER JOIN dishes AS d ON od.dish_id=d.id
-- WHERE d.name LIKE 'v60%';
-- 
-- SELECT o.id FROM orders AS o
-- WHERE o.id IN (SELECT od.order_id FROM orders_dishes as od);

-- SELECT id from orders
-- WHERE EXISTS (
--     SELECT order_id from orders_dishes
--     WHERE orders.id = orders_dishes.order_id
-- );

-- SELECT dish_name,
--     CASE WHEN total_profit >= 20 THEN 'Profitable dish'
--         WHEN total_profit >= 10 THEN 'Okay dish'
--         ELSE 'Non-profitable dish'
--     END AS label
-- FROM most_ordered_dishes
-- ORDER BY label DESC;


-- SELECT WEEKDAY(ordered_at) AS dow,
--     CASE WHEN WEEKDAY(ordered_at) = 0 THEN 'Monday'
--         WHEN WEEKDAY(ordered_at) = 1 THEN 'Tuesday'
--         WHEN WEEKDAY(ordered_at) = 2 THEN 'Wednesday'
--         WHEN WEEKDAY(ordered_at) = 3 THEN 'Thursday'
--         WHEN WEEKDAY(ordered_at) = 4 THEN 'Friday'
--         WHEN WEEKDAY(ordered_at) = 5 THEN 'Saturday'
--         ELSE 'Sunday'
--     END AS day_of_week
-- FROM orders;