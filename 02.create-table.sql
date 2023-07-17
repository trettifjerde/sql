CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200),
    salary INT,
    current_status ENUM('employed', 'self-employed', 'unemployed') -- only for mySQL
);