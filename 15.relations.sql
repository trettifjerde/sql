CREATE TABLE cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    address_id INT NOT NULL
);

INSERT INTO cities (name) VALUES ('Zagreb'), ('Split'), ('Zadar'), ('Dubrovnik'), ('Rijeka');
INSERT INTO addresses (street, house_number, city_id) VALUES 
('Dalmatinska', 10, 1), 
('Ilica', 92, 1),
('Hrvoja Ćustića', 4, 3),
('Ante Starčevića', 14, 2),
('Špire Brusine', 12, 3),
('Franja Tuđmana', 4, 4),
('Ivane Brlić Mažuranić', 4, 4);

INSERT INTO addresses (street, house_number, city_id) VALUES 
('Trg 111 Brigade Hrvatske Vojske', 11, 5),
('Adamićeva', 34, 5),
('Obala Hrvatskog narodnog preporoda', 7, 2),
('Trumbićeva obala', 16, 2),
('ban Mladenova', 1, 2),
('Frane Petrića', 2, 1),
('Ante Starčevića', 15, 3);

INSERT INTO users (first_name, last_name, email, address_id) VALUES 
('Dragutin', 'Ujević', 'draguje@me.me', 1),
('Iva', 'Ujević', 'ivauje@me.me', 1),
('Ivica', 'Vučić', 'ivica@me.hr', 2),
('Tomislav', 'Krleža', 'krle@me.hr', 3),
('Kristian', 'Novak', 'kristianovak@me.hr', 4);

