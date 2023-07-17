CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- INSERT INTO cities (name) VALUES
-- ('Zagreb'),
-- ('Split'),
-- ('Zadar');

CREATE TABLE IF NOT EXISTS locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    street VARCHAR(250) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(15),
    city_id INT NOT NULL,
    
    CONSTRAINT city_key FOREIGN KEY(city_id) REFERENCES cities(id) ON DELETE CASCADE
);

-- INSERT INTO locations (title, street, house_number, city_id) VALUES 
-- ('Great hall', 'Zrinjevac', 1, 1),
-- ('Small hall', 'Zrinjevac', 10, 1),
-- ('The embankment', 'Riva', 1, 2),
-- ('Sunset place', 'Morsko orgulje', 1, 3);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS organizers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    password VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS events (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(200) NOT NULL,
   date TIMESTAMP NOT NULL,
   image VARCHAR(500) NOT NULL DEFAULT 'default_image.png',
   description TEXT NOT NULL,
   location_id INT,
   max_participants INT,
   min_age INT,
   organizer_id INT,
   CONSTRAINT part_positive_constraint CHECK (max_participants > 0),
   CONSTRAINT age_positive_constraint CHECK (min_age > 0),
   CONSTRAINT location_key FOREIGN KEY(location_id) REFERENCES locations(id) ON DELETE SET NULL,
   CONSTRAINT organizer_const FOREIGN KEY(organizer_id) REFERENCES organizers(id) ON DELETE SET NULL
);

-- INSERT INTO events (name, date, description, max_participants, min_age, location_id) VALUES 
-- ('Web dev conf', '2023-09-23', 'Very interesting stuff', 300, 14, 1),
-- ('Game dev conf', '2023-09-20', 'Exciting stuff', 100, 18, 2),
-- ('Game con', '2023-09-20', 'Even more exciting stuff', 1000, 14, 3);

CREATE TABLE IF NOT EXISTS tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

-- INSERT INTO tags (name) VALUES ('webdev');

CREATE TABLE IF NOT EXISTS events_tags (
    event_id INT,
    tag_id INT,
    FOREIGN KEY(event_id) REFERENCES events(id) ON DELETE CASCADE,
    FOREIGN KEY(tag_id) REFERENCES tags(id) ON DELETE CASCADE,
    PRIMARY KEY(event_id, tag_id)
);