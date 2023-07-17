CREATE VIEW loyal_customers AS SELECT username, total_price, SUM(total_price) OVER() AS total_revenue
FROM users_total_spent
ORDER BY total_price DESC;