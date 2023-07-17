CREATE TABLE employers (
    company_name VARCHAR(100),
    company_address VARCHAR(300),
    revenue FLOAT(5,2), -- Aproximation. first - total number of digits, second - number of digits after the dot. allowed: 123.12 12.1, not allowed: 1234.12, 1.234
    -- revenue NUMERIC(5,2) -- Precision, exact value
    is_hiring TINYINT(1)
);