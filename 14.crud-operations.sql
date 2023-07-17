USE sales;
CREATE TABLE sales (
    date_created TIMESTAMP DEFAULT (CURRENT_DATE),
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(200) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10,2),
    is_disputed TINYINT DEFAULT 0,
    is_recurring TINYINT DEFAULT 0
);

INSERT INTO sales (
    date_fulfilled,
    customer_name,
    product_name,
    volume,
    is_recurring,
    is_disputed
  )
VALUES (
  NULL,
  'Learning Inc',
  'Course Bundle',
  4889.62,
  FALSE,
  FALSE
), (
  '2022-04-10',
  'Big Oil Inc',
  'Trucks',
  400000.0,
  FALSE,
  TRUE
);

INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_disputed,
  is_recurring
)
VALUES (
  '2022-01-18',
  '2022-03-11',
  'Company A',
  'A Nice Product',
  489.99,
  FALSE,
  TRUE
), (
  '2022-01-18',
  '2022-05-01',
  'Company B',
  'Video Game Collection',
  3859.12,
  FALSE,
  FALSE
), (
  '2021-12-05',
  NULL,
  'Company C',
  'Daily News Summary',
  4.99,
  FALSE,
  TRUE
), (
  '2021-12-05',
  '2021-12-07',
  'Company A',
  'Good-looking carpet',
  1099.82,
  TRUE,
  FALSE
), (
  '2022-02-21',
  '2022-02-24',
  'Max Schwarz',
  'Lord of the Rings Collection',
  69.99,
  FALSE,
  FALSE
), (
  '2021-10-14',
  '2022-02-21',
  'Max Schwarz',
  'Lord of the Rings Movies',
  25.99,
  FALSE,
  FALSE
), (
  '2022-06-01',
  NULL,
  'Max Schwarz',
  'Another book',
  8.99,
  FALSE,
  FALSE
), (
  '2021-08-17',
  '2021-09-12',
  'Company D',
  'Vehicle Services',
  4999.99,
  TRUE,
  TRUE
), (
  '2021-03-12',
  '2022-06-19',
  'Company D',
  'Vehicle Fleet',
  280000,
  FALSE,
  FALSE
);
ALTER TABLE sales
MODIFY COLUMN volume NUMERIC(10,3) NOT NULL CHECK(volume >= 0);

ALTER TABLE sales
MODIFY COLUMN date_created DATE DEFAULT (CURRENT_DATE);

ALTER TABLE sales
MODIFY COLUMN date_fulfilled DATE;

ALTER TABLE sales
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume
)
VALUES (
  '2021-12-09',
  '2021-12-17',
  'Company Z',
  'A Tuck',
  109.0
);
USE sales;
UPDATE sales
SET 
    volume=volume * 1000,
    product_name='A Truck'
WHERE id=12;

DELETE FROM sales
WHERE id=12;
