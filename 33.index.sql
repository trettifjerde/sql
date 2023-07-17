EXPLAIN ANALYZE
SELECT * FROM users;

EXPLAIN ANALYZE 
SELECT * FROM users
LEFT JOIN orders on orders.user_id=users.id
WHERE users.id > 4;

CREATE INDEX indexname ON tablename (columnname); -- single column index
CREATE UNIQUE INDEX indexname ON tablename (columnname); --no duplicates
CREATE INDEX multiaddress ON addresses (street, city); -- order is important; if where clause starts with the second index, index optimization search is not used

CREATE TABLE <table_name> (
    ... column definitions,
    INDEX <index_name> (<column>)
);
