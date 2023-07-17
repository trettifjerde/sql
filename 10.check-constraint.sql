-- ALTER TABLE users
-- MODIFY COLUMN salary INT CHECK (salary > 0 AND salary < 100000);

UPDATE employers
SET revenue = 0
WHERE company_name = "Meow Inc.";

ALTER TABLE employers
ADD CONSTRAINT revenue_positive CHECK (revenue > 0);