ALTER TABLE users
ADD FOREIGN KEY(address_id) REFERENCES addresses(id);
ALTER TABLE users
DROP CONSTRAINT some_default_name_from_show_create_table;
ALTER TABLE users
MODIFY COLUMN address_id INT;

ALTER TABLE users
ADD CONSTRAINT address_constraint FOREIGN KEY(address_id) REFERENCES addresses(id) ON DELETE SET NULL;
ALTER TABLE addresses
ADD CONSTRAINT city_constraint FOREIGN KEY(city_id) REFERENCES cities(id) ON DELETE CASCADE;
ALTER TABLE addresses
ADD CONSTRAINT city_constraint FOREIGN KEY(city_id) REFERENCES cities(id) ON DELETE CASCADE;