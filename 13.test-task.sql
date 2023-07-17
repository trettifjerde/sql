CREATE DATABASE shop;
USE shop;

CREATE TABLE products (
    name VARCHAR(300),
    description TEXT,
    amount_in_stock INT,
    image VARCHAR(500)
);

INSERT INTO products (name, amount_in_stock, description, image) 
VALUES (
    'Cat food', 
    5, 
    'Simply delicious', 
    'https://image.meow.org/img1'
);

INSERT INTO products (name, amount_in_stock, description, image) 
VALUES (
    'Dog toy', 
    10, 
    'Entertaining', 
    'https://image.meow.org/img2'
);
USE shop;
ALTER TABLE products
MODIFY COLUMN name VARCHAR(300) NOT NULL;
ALTER TABLE products
MODIFY COLUMN amount_in_stock INT NOT NULL DEFAULT 0 CHECK(amount_in_stock >= 0);

ALTER TABLE products
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;