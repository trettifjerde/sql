-- CREATE DATABASE company;
-- CREATE TABLE IF NOT EXISTS buildings (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100)
-- );
-- 
-- CREATE TABLE IF NOT EXISTS teams (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     building_id INT, 
--     
--     FOREIGN KEY (building_id) 
--         REFERENCES buildings(id) 
--         ON DELETE SET NULL
-- );
-- 
-- CREATE TABLE IF NOT EXISTS employees (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(200) UNIQUE NOT NULL, 
--     team_id INT,
-- 
--     FOREIGN KEY (team_id)
--         REFERENCES teams(id)
--         ON DELETE SET NULL
-- );
-- 
-- CREATE TABLE IF NOT EXISTS intranet_accounts (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     email VARCHAR(200) NOT NULL,
--     password VARCHAR(100) NOT NULL,
-- 
--     FOREIGN KEY (email)
--         REFERENCES employees(email) 
--         ON DELETE CASCADE
-- );

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    day_started DATE DEFAULT (CURRENT_DATE),
    deadline DATE
);
CREATE TABLE projects_employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT REFERENCES employees(id) ON DELETE CASCADE,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE
    -- FOREIGN KEY (key_1, key_2) REFERENCES some_table(key_1, key_2) ON DELETE SET NULL
);