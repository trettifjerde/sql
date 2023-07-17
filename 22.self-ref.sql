-- ALTER TABLE employees
-- ADD COLUMN supervisor_id INT REFERENCES employees(id) 
-- ON DELETE SET NULL;

SELECT e1.name AS employee, e2.name AS supervisor FROM employees AS e1 
INNER JOIN employees AS e2 ON e1.supervisor_id=e2.id;