-- CREATE VIEW user_info AS 
-- SELECT u.id, u.first_name, u.last_name, u.email, a.street, a.house_number, c.name AS city_name
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id=a.id
-- INNER JOIN cities AS c ON a.city_id=c.id;

SELECT * FROM user_info WHERE city_name='Zagreb';