CREATE TABLE messages (
    user_name VARCHAR(200),
    company_name VARCHAR(100),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);